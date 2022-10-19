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

  @ignore
  Int64? ttl;

  @ignore
  ChannelCredentials? credentials;

  @ignore
  VClient? client;

  @ignore
  List<int>? dToken; // stored in flutter_secure_storage not Isar
}

class ServersProvider with ChangeNotifier {
  ServersProvider() {
    init();
  }

  List<Server> _servers = [];

  Server? _selected;

  List<Server> get servers => _servers;

  Server? get selected => _selected;

  late Isar isar;

  void init() async {
    isar = await Isar.open([ServerSchema]);

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
      bool deleted = await isar.servers.delete(server.id);
      if (deleted) _servers.remove(server);
      notifyListeners();
    });
  }

  void connectServer(Server server) async {
    server.client ??= VClient(
      server.host ?? 'localhost',
      server.port ?? 10001,
      server.credentials ?? const ChannelCredentials.insecure(),
      server.ttl ?? Int64(600),
    );
    await server.client?.startSession();
    notifyListeners();
    server.client?.keepSession();
  }

  void disconnectServer(Server server) async {
    server.client?.stopSession();
    notifyListeners();
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
}

class CloudWidget extends StatelessWidget {
  const CloudWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              context.read<ServersProvider>().selected?.client?.sessionActive ??
                      false
                  ? const Icon(Icons.cloud)
                  : const Icon(Icons.cloud_off),
          title:
              context.read<ServersProvider>().selected?.client?.sessionActive ??
                      false
                  ? const Text('Connected')
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
                    subtitle: Text(
                        server.host == null ? 'Unset' : server.host.toString()),
                    trailing: SizedBox(
                      width: 100,
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
                              onPressed: () {
                                context
                                    .read<ServersProvider>()
                                    .deleteServer(server);
                              },
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ));
  }
}
