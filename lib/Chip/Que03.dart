// lib/Card\Que01CardContainer.dart
import 'package:flutter/material.dart';

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Generate chip (Basic)');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url1 = "https://api.flutter.dev/flutter/widgets/Wrap-class.html";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Generate chip \n(Basic)"),
        ),
        body: Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AH')),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('ML')),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('HM')),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JL')),
              label: const Text('Laurens'),
            ),
          ],
        ));
  }
}
