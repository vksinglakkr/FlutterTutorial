//lib/WidgetCommunication/HeightChanger.dart
import 'package:flutter/material.dart';

class Height01 extends StatefulWidget {
  @override
  _Height01State createState() => _Height01State();
}

class _Height01State extends State<Height01> {
  double heightVar = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Height Changer'),
      ),
      body: Center(
        child: Container(
            width: 150,
            height: heightVar,
            color: Colors.red,
            child: Count(
              count: heightVar,
              onCountSelected: () {
                print("Count was selected.");
              },
              onCountChanged: (int val) {
                setState(() => heightVar += val);
              },
            )),
      ),
    );
  }
}

class Count extends StatelessWidget {
  final double count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChanged;

  Count({
    @required this.count,
    @required this.onCountChanged,
    this.onCountSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
