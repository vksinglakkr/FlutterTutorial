import 'package:flutter/material.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      theme: ThemeData(
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme'),
        ),
        body: Column(children: [
          Card(
            color: Colors.amber,
            child: Text(
              'Card with Theme',
              textScaleFactor: 1.2,
            ),
          ),
          Card(
            color: Colors.blue,
            child: Text(
              'Card with Theme',
              textScaleFactor: 1.2,
            ),
          ),
          Card(
            color: Colors.cyan,
//            shape: StadiumBorder(
            //      ),
            child: Text(
              'Card with Theme',
              textScaleFactor: 1.2,
            ),
          ),
        ]),
      ),
    );
  }
}
