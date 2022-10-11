import 'package:flutter/material.dart';

class CloudWidget extends StatefulWidget {
  const CloudWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CloudWidgetState();
}

class CloudWidgetState extends State<CloudWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        ))
      ],
    );
  }
}
