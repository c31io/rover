import 'dart:core';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:rover/src/voxov/client.dart';

part 'cloud.g.dart';

class CloudWidget extends StatefulWidget {
  const CloudWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CloudWidgetState();
}

@collection
class Server {
  Id? id;
  int? index;
  String? name;
  String? url;

  @ignore
  VClient? client;

  @ignore
  List<int>? dToken; // stored in flutter_secure_storage not Isar
}

class CloudWidgetState extends State<CloudWidget> {
  // Read server from Isar, if none create local
  // Need to move Server higher
  @override
  Widget build(BuildContext context) {
    //final isar = () async {return await Isar.open([ServerSchema]);}();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disconnected'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
          children: const <Widget>[])
    );
  }
}
