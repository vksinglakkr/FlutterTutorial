import 'package:flutter/material.dart';

class Que01 extends StatefulWidget {
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication")),
      body: Center(
          child: Count(
        count: count,
        onCountSelected: () {
          print("Count was selected.");
        },
        onCountChanged: (int val) {
          setState(() => count += val);
        },
      )),
    );
  }
}

class Count extends StatelessWidget {
  final int count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChanged;

  Count({
    @required this.count,
    @required this.onCountChanged,
    this.onCountSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            onCountChanged(1);
          },
        ),
        TextButton(
          child: Text("$count"),
          onPressed: () => onCountSelected(),
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            onCountChanged(-1);
          },
        ),
      ],
    );
  }
}
