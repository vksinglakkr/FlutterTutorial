import 'package:flutter/material.dart';

class Que07LeadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Leading"),
        leadingWidth: 100, // default is 56
      ),
      body: Center(
        child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                '''leading: Text("Leading"),''',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
