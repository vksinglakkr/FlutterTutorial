import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/BottomNavigationBar.dart';

class MyAppBar extends StatefulWidget {
  final String title;
  final String image;
  MyAppBar({this.title, this.image});

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Text => ${widget.title}")),
      body: Container(child: Image.asset('${widget.image}')),
      floatingActionButton: WidgetFab(),
    );
  }
}
