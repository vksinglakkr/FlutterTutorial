import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World', textDirection: TextDirection.ltr),
        ),
      ),
    );
  }
}

//Fine Nic Kurukshetra will show on White Screen. text in Center
