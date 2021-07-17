// lib/Card\Que01CardContainer.dart
import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Generate chip using \nList.generate');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url1 =
      "https://dev.to/pedromassango/flutter-tip-1-preventing-widgets-s-overflow-8cd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List.generate"),
      ),
      body: Wrap(
        children: List.generate(12, (i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text("Item $i"),
            ),
          );
        }),
      ),
    );
  }
}
