import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rover',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return buildWideLayout();
          } else {
            return buildNarrowLayout();
          }
        },
      ),
    );
  }
}

Widget buildWideLayout() {
  return const Scaffold();
}

Widget buildNarrowLayout() {
  return const Scaffold();
}
