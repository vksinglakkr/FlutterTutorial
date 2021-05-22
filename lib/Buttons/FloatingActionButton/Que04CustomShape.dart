import 'package:flutter/material.dart';

class Que04Floating extends StatefulWidget {
  @override
  _Que04FloatingState createState() => _Que04FloatingState();
}

class _Que04FloatingState extends State<Que04Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Custom Shape"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings_voice),
        shape: _CustomBorder(),
      ),
    );
  }
}

class _CustomBorder extends ShapeBorder {
  const _CustomBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right - rect.width / 3, rect.top + rect.height / 3)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.right - rect.width / 3, rect.top + 2 * rect.height / 3)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left + rect.width / 3, rect.top + 2 * rect.height / 3)
      ..lineTo(rect.left, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 3, rect.top + rect.height / 3)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  // This border doesn't support scaling.
  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
