import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CircularProgressIndicator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CircularProgressIndicator Demo'),
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularProgressIndicator(),
                CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
                CircularProgressIndicator(
                  strokeWidth: 10.0,
                ),
              ]),
        ),
      ),
    );
  }
}
