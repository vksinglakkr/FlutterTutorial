import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            child: Text('Nic Kurukshetra'),
          ),
        ),
      ),
    );
  }
}

//Fine Nic Kurukshetra will show on White Screen. Blue Background. Center Screen
