import 'dart:core';
import 'dart:developer';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'package:rover/src/voxov/client.dart';
import 'generated/voxov.pbgrpc.dart' as voxov;

import 'cloud.dart';

part 'person.g.dart';

@collection
class Person {
  Id id = Isar.autoIncrement;
  late int serverId;
  late List<int> pid;
  late List<int> hid;
  late List<int> balance;
  late String phone;
  late String pName;
  late String idDoc;
  late int dLimit;
  late List<int> created;
  late List<int> lastIn;
  @ignore
  late List<Device> devices;
  late List<int> did;

  Person();

  factory Person.fromProto(voxov.Person vp, int serverId) {
    var ret = Person();
    ret.serverId = serverId;
    ret.pid = vp.pid.toBytes();
    ret.hid = vp.hid.toBytes();
    ret.balance = vp.balance.toBytes();
    ret.phone = vp.phone;
    ret.pName = vp.pname;
    ret.idDoc = vp.idDoc;
    ret.dLimit = vp.dlimit;
    ret.created = vp.created.toBytes();
    ret.lastIn = vp.lastIn.toBytes();
    ret.devices = [];
    ret.did = [];
    return ret;
  }
}

@collection
class Device {
  Id id = Isar.autoIncrement;
  late int serverId;
  late List<int> did;
  @ignore
  late List<int> dToken;
  late String dName;
  late String dInfo;
  late List<int> pid;
  late List<int> created;
  late List<int> lastIn;
}

class PersonProvider with ChangeNotifier {
  PersonProvider(this.isar) {
    init();
  }

  List<Person> _persons = [];
  List<Person> get persons => _persons;
  Person? _selected;
  Person? get selected => _selected;

  List<Person> personOnServer(int serverId) => _persons.where((p) => p.serverId==serverId).toList();

  late Isar isar;

  void init() async {
    await isar.txn(() async {
      final personsCollection = isar.persons;
      _persons = await personsCollection.where().findAll();
      notifyListeners();
    });
  }

  void addPerson(Person person) async {
    await isar.writeTxn(() async {
      await isar.persons.put(person);
    });
    _persons.add(person);
    notifyListeners();
    log('add person');
  }
}

class PersonWidget extends StatelessWidget {
  const PersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.people),
        title: Text(
          context.watch<ServersProvider>().selected == null
              ? "Server not selected"
              : context
                          .watch<ServersProvider>()
                          .selected
                          ?.client
                          ?.sessionActive ??
                      false
                  ? context.watch<ServersProvider>().selected?.name ?? "Unnamed"
                  : "Server disconnected",
          style: context.watch<ServersProvider>().selected == null
              ? const TextStyle(color: Colors.redAccent)
              : context
                          .watch<ServersProvider>()
                          .selected
                          ?.client
                          ?.sessionActive ??
                      false
                  ? null
                  : const TextStyle(color: Colors.redAccent),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (context.read<ServersProvider>().selected?.client?.sessionActive ??
              false) {
            final selectedServer = context.read<ServersProvider>().selected!;
            final client = selectedServer.client!;
            List<String>? telMsg;
            () async {
              telMsg = await client.authenticate();
            }();
            if (telMsg == null) {
              showAuthFailedAlert(context);
            } else {
              showAuthDialog(context, selectedServer, client, telMsg!);
            }
          } else {
            showConnFailedAlert(context);
          }
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: context
            .watch<PersonProvider>()
            .personOnServer(context.watch<ServersProvider>().selected?.id ?? 0)
            .map((person) => ListTile(
                  title:
                      Text(person.pName.isEmpty ? 'Anonymous' : person.pName),
                  subtitle: Text(
                      "${Int64.fromBytes(person.pid)} @ ${context.read<ServersProvider>().servers.singleWhere((s) => s.id == person.serverId).host}"),
                ))
            .toList(),
      ),
    );
  }
}

void showAuthFailedAlert(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Authentication failed'),
      content: const Text('Please try again later.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}

void showAuthDialog(BuildContext context, Server selectedServer, VClient client,
    List<String> telMsg) {
  showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Authenticate via SMS'),
      content: Text('Send ${telMsg[1]} to ${telMsg[0]}'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {
            Int64? person;
            () async {
              person = await client.whoAmI(telMsg[0], telMsg[1]);
            }();
            Person? me;
            log(person.toString());
            if (person != null) {
              voxov.Person? protoPerson;
              () async {
                protoPerson = await client.readPerson(person!);
              }();
              if (protoPerson != null) {
                me = Person.fromProto(protoPerson!, selectedServer.id);
                // TODO create device
                me.did = <int>[1, 2, 3];
                if (!context.mounted) return;
                context.read<PersonProvider>().addPerson(me);
              }
            }
            Navigator.pop(context, 'Sent');
          },
          child: const Text('Sent'),
        ),
      ],
    ),
  );
}

void showConnFailedAlert(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Disconnected'),
      content: const Text('Please return to Cloud and reconnect.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
