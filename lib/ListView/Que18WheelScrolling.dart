import 'package:flutter/material.dart';

class Que18ListWheelViewExample extends StatefulWidget {
  @override
  _Que18ListWheelViewExampleState createState() =>
      _Que18ListWheelViewExampleState();
}

class _Que18ListWheelViewExampleState extends State<Que18ListWheelViewExample> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 75,
      childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
        if (index < 0 || index > 10) {
          return null;
        }
        return ListTile(
          leading: Text(
            "$index",
            style: TextStyle(fontSize: 50),
          ),
          title: Text("Title $index"),
          subtitle: Text('Description here'),
        );
      }),
    );
  }
}
