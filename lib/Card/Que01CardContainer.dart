import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Demo',
      home: MyHomePage(title: 'Card Demo'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              height: 100,
              width: 400,
              child: Text(
                "Sample 1",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          Card(
            child: Container(
              height: 100,
              width: 400,
              child: Text(
                "Sample 1",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
