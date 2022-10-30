import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover/src/person.dart';
import 'src/cloud.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ServersProvider())
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  static const List<Widget> views = <Widget>[
    CloudWidget(),
    PersonWidget(),
    Text(
      'Index 2',
    ),
    Text(
      'Index 3',
    ),
    Text(
      'Index 4',
    ),
    Text(
      'Index 5',
    ),
  ];

  int viewIndex = 0;

  void onViewTapped(int index) {
    setState(() {
      viewIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: views.elementAt(viewIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Cloud',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_charging_full),
            label: 'Energy',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Plan',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.api),
            label: 'Gene',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset),
            label: 'Meme',
            tooltip: '',
          ),
        ],
        currentIndex: viewIndex,
        onTap: onViewTapped,
      ),
    );
  }
}
