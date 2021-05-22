import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      home: MyHomePage(title: 'Drawer Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
        // leading: BackButton(
        //   color: Colors.purple,
        // ),
      ),
      body: Text("Drawer Demo"),
    );
  }
}
