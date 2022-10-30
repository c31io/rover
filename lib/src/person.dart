import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

//import 'cloud.dart';

@collection
class Person {
  Id id = Isar.autoIncrement;
  late int serverId;
  late List<int> pid;
  List<int>? hid;
  late List<int> balance;
  late String phone;
  String? pName;
  String? idDoc;
  late int dLimit;
  late List<int> created;
  late List<int> lastIn;
}

@collection
class Device {
  Id id = Isar.autoIncrement;
  late int serverId;
  late List<int>? did;
  late List<int>? dToken;
  String? dName;
  String? dInfo;
  late List<int>? pid;
  late List<int>? created;
  late List<int>? lastIn;
}

class PersonWidget extends StatelessWidget {
  const PersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
