import 'dart:core';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:grpc/grpc.dart';
import 'package:isar/isar.dart';
import 'package:rover/src/voxov/client.dart';

part 'cloud.g.dart';

@collection
class Server {
  Id id = Isar.autoIncrement;
  int? index;
  String? name;
  String? host;
  int? port;
  int? ttl;

  @ignore
  ChannelCredentials? credentials;

  @ignore
  VClient? client;

  @ignore
  List<int>? dToken; // stored in flutter_secure_storage not Isar
}

class ServersProvider with ChangeNotifier {
  ServersProvider(this.isar) {
    init();
  }

  List<Server> _servers = [];
  List<Server> get servers => _servers;
  Server? _selected;
  Server? get selected => _selected;

  late Isar isar;

  void init() async {
    await isar.txn(() async {
      final serversCollection = isar.servers;
      _servers = await serversCollection.where().findAll();
      notifyListeners();
    });
  }

  void addServer(Server server) async {
    await isar.writeTxn(() async {
      await isar.servers.put(server);
    });
    _servers.add(server);
    notifyListeners();
  }

  void deleteServer(Server server) async {
    await isar.writeTxn(() async {
      if (server == _selected) _selected = null;
      bool deleted = await isar.servers.delete(server.id);
      if (deleted) {
        _servers.remove(server);
      } else if (await isar.servers.get(server.id) == null) {
        _servers.remove(server);
      }
      notifyListeners();
    });
  }

  void connectServer(Server server) async {
    server.client ??= VClient(
      server.host ?? 'localhost',
      server.port ?? 10001,
      server.credentials ?? const ChannelCredentials.insecure(),
      Int64(server.ttl ?? 600),
    );
    await server.client?.startSession();
    notifyListeners();
    // keepSession
    () async {
      while (server.client?.sessionActive ?? false) {
        await Future.delayed(
            Duration(seconds: (server.client?.ttl.toInt() ?? 600) ~/ 2));
        if (server.client?.sessionActive ?? false) {
          var reply = await server.client?.updateSession();
          if (!(reply?.ok ?? false)) {
            server.client?.sessionActive = false;
            notifyListeners();
          }
        }
      }
    }();
  }

  Future<void> disconnectServer(Server server) async {
    if (server.client?.sessionActive ?? false) {
      await server.client?.stopSession();
      notifyListeners();
    }
  }

  void toggleServer(Server server) async {
    if (server.client?.sessionActive ?? false) {
      disconnectServer(server);
    } else {
      connectServer(server);
    }
  }

  void selectServer(Server? server) async {
    _selected = server;
    notifyListeners();
  }

  void updateServerName(Server server, String value) async {
    if (server.name == value) return;
    await isar.writeTxn(() async {
      server.name = value.isEmpty ? null : value;
      await isar.servers.put(server);
    });
    notifyListeners();
  }

  void updateServerHost(Server server, String value) async {
    if (server.host == value) return;
    await disconnectServer(server);
    server.client = null;
    await isar.writeTxn(() async {
      server.host = value.isEmpty ? null : value;
      await isar.servers.put(server);
    });
    notifyListeners();
  }

  void updateServerPort(Server server, int? value) async {
    if (server.port == value) return;
    await disconnectServer(server);
    server.client = null;
    await isar.writeTxn(() async {
      server.port = value;
      await isar.servers.put(server);
    });
    notifyListeners();
  }

  void updateServerTtl(Server server, int? value) async {
    if (server.ttl == value) return;
    await disconnectServer(server);
    server.client = null;
    await isar.writeTxn(() async {
      server.ttl = value;
      await isar.servers.put(server);
    });
    notifyListeners();
  }
}

class CloudWidget extends StatelessWidget {
  const CloudWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              context.watch<ServersProvider>().selected?.client?.sessionActive ??
                      false
                  ? const Icon(Icons.cloud)
                  : const Icon(Icons.cloud_off),
          title: context
                      .watch<ServersProvider>()
                      .selected
                      ?.client
                      ?.sessionActive ??
                  false
              ? Text(
                  'Connected${context.read<ServersProvider>().selected!.client!.channel.options.credentials.isSecure ? '' : ' (Unsafe)'}')
              : const Text('Disconnected'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              {context.read<ServersProvider>().addServer(Server())},
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: context
              .watch<ServersProvider>()
              .servers
              .map((server) => ListTile(
                    leading: Radio<Server>(
                      value: server,
                      groupValue: context.read<ServersProvider>().selected,
                      onChanged: (Server? server) {
                        context.read<ServersProvider>().selectServer(server);
                      },
                    ),
                    title: Text(server.name ?? 'Unnamed'),
                    subtitle: Text(server.host == null
                        ? 'localhost:${server.port ?? 10001}'
                        : '${server.host}:${server.port ?? 10001}'),
                    trailing: SizedBox(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () => context
                                  .read<ServersProvider>()
                                  .toggleServer(server),
                              icon: Icon(
                                server.client?.sessionActive ?? false
                                    ? Icons.link
                                    : Icons.link_off,
                                color: server.client?.sessionActive ?? false
                                    ? Colors.blue
                                    : Colors.grey,
                              )),
                          IconButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => SimpleDialog(
                                  title: const Text('Edit server'),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      12.0, 12.0, 12.0, 16.0),
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Name',
                                      ),
                                      initialValue: server.name,
                                      onFieldSubmitted: (value) {
                                        context
                                            .read<ServersProvider>()
                                            .updateServerName(server, value);
                                      },
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Host',
                                      ),
                                      initialValue: server.host,
                                      onFieldSubmitted: (value) {
                                        context
                                            .read<ServersProvider>()
                                            .updateServerHost(server, value);
                                      },
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Port',
                                      ),
                                      initialValue: server.port?.toString(),
                                      onFieldSubmitted: (value) {
                                        context
                                            .read<ServersProvider>()
                                            .updateServerPort(
                                                server, int.tryParse(value));
                                      },
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'TTL',
                                      ),
                                      initialValue: server.ttl?.toString(),
                                      onFieldSubmitted: (value) {
                                        context
                                            .read<ServersProvider>()
                                            .updateServerTtl(
                                                server, int.tryParse(value));
                                      },
                                    ),
                                  ]),
                            ),
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                              onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Text(
                                        'Delete server?',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      content:
                                          const Text("This can't be undone."),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            context
                                                .read<ServersProvider>()
                                                .deleteServer(server);
                                            Navigator.pop(context, 'Delete');
                                          },
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ));
  }
}
