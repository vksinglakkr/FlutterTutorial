import 'package:flutter/material.dart';

class Que05Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyView(),
    );
  }
}

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter AlertDialog - NIC KKR'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Alert Dialog'),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.green,
        title: new Text(
          "Alert!!",
          style: TextStyle(color: Colors.white),
        ),
        content: new Text(
          "You are awesome!",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new TextButton(
            //color: Colors.green[200],
            child: new Text(
              "OK",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
