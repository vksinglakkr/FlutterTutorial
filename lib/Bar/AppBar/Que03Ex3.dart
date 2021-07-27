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
    );
  }
}
