import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var groupValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: ListView(
          children: [
            ListTile(
              title: Text('List item 1'),
              subtitle: Text('Secondary text'),
              leading: Icon(Icons.label),
              trailing: Radio(
                value: 1,
                groupValue: groupValue,
                onChanged: (value) {
                  // Update value.
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
