import 'package:flutter/material.dart';

class Que03Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Leading "),
        title: Text("Flutter AppBar Tutorial"),
        actions: [Text("First action takes images, icon ")],
      ),
      body: Center(
        child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                ''' appBar: AppBar(
        leading: Text(" ... "),
        title: Text(" ... "),
        actions: [Text(" ... ")])''',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
