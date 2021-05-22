import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Row(
          children: [
            Text('Begin'),
            Spacer(), //Defaults to a flex of one.
            Text('Middle'),
            Spacer(
              flex: 2,
            ), //Gives twice the space between Middle and End than Begin and Middle.
            Text('End'),
          ],
        ),
      ),
    );
  }
}
