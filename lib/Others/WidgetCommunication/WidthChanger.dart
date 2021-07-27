import 'package:flutter/material.dart';

class Width01 extends StatefulWidget {
  @override
  _Width01State createState() => _Width01State();
}

class _Width01State extends State<Width01> {
  double widthVar = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Width Changer'),
      ),
      body: Center(
        child: Container(
            width: widthVar,
            height: 300,
            color: Colors.red,
            child: Count(
              count: widthVar,
              onCountSelected: () {
                print("Count was selected.");
              },
              onCountChanged: (int val) {
                setState(() => widthVar += val);
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
