import 'package:flutter/material.dart';

class Que03Ex3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers horizontally
          children: [
            Icon(Icons.train),
            Icon(Icons.place),
            // The SizedBox provides an immediate spacing between the widgets
            SizedBox(
              width: 3,
            ),
            Text(
              "Place",
            )
          ],
        ),
      ),
      body: Center(
        child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                '''appBar: AppBar(title: 
    Row(
            children: [
            Icon(Icons.train),
            Icon(Icons.place),
            Text("Place",)])) ''',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
