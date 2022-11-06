import 'dart:core';
import 'dart:developer';
//import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';

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
        onPressed: () {
          if (context.read<ServersProvider>().selected?.client?.sessionActive ??
              false) {
            try {
              var telMsgF = context
                  .read<ServersProvider>()
                  .selected!
                  .client!
                  .authenticate();
              () async {
                var telMsg = await telMsgF;
                if (telMsg == null) {
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
                } else {
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
                            () async {
                              var person = await context
                                  .read<ServersProvider>()
                                  .selected!
                                  .client!
                                  .whoAmI(telMsg[0], telMsg[1]);
                              Person? me;
                              log(person.toString());
                              if (person != null) {
                                if (!context.mounted) return;
                                var protoPerson = await context
                                    .read<ServersProvider>()
                                    .selected!
                                    .client!
                                    .readPerson(person);
                                if (protoPerson != null) {
                                  me = Person();
                                  me.pid = protoPerson.pid.toBytes();
                                  me.hid = protoPerson.hid.toBytes();
                                  me.balance = protoPerson.balance.toBytes();
                                  me.phone = protoPerson.phone;
                                  me.pName = protoPerson.pname;
                                  me.idDoc = protoPerson.idDoc;
                                  me.dLimit = protoPerson.dlimit;
                                  me.created = protoPerson.created.toBytes();
                                  me.lastIn = protoPerson.lastIn.toBytes();
                                  if (!context.mounted) return;
                                  me.serverId = context
                                      .read<ServersProvider>()
                                      .selected!
                                      .id;
                                  // TODO create device
                                  me.did = <int>[1, 2, 3];
                                  if (!context.mounted) return;
                                  context.read<PersonProvider>().addPerson(me);
                                }
                              }
                            }();
                            Navigator.pop(context, 'Sent');
                          },
                          child: const Text('Sent'),
                        ),
                      ],
                    ),
                  );
                }
              }();
            } catch (e) {
              log('Caught error: $e');
            }
          } else {
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
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: context
            .watch<PersonProvider>()
            .persons
            .map((person) => ListTile(
                title: Text(person.pName.isEmpty ? 'Anonymous' : person.pName)))
            .toList(),
      ),
    );
  }
}
