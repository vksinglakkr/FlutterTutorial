// lib/Container\Que16a_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que16a11 extends StatefulWidget {
  @override
  _Que16a11State createState() => _Que16a11State();
}

class _Que16a11State extends State<Que16a11> {
  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que16a.png";

  final String video1 = "JDDoN2THwug";
  Alignment _alignment1 = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Alignment")),
        body: Column(
          children: [
            Center(
              child: Container(
                color: Colors.amber,
                width: 260,
                height: 160,
                child: Align(
                  alignment: _alignment1,
                  child:
                      Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Theme.of(context).primaryColorLight,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          CustAlignment(
              propText: "Alignment",
              defaultAlignment: _alignment1,
              onValueChange: (value) {
                setState(() {
                  _alignment1 = value;
                });
              })
        ]),
      ),
    );
  }
}
