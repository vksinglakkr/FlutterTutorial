// lib/Container\Que15Transform.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1511 extends StatefulWidget {
  @override
  _Que1511State createState() => _Que1511State();
}

class _Que1511State extends State<Que1511> {
  final random = Random();
  double sliderVal1 = 10;

  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que15.png";

  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Transform ")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                //transform: null,
                transform: Matrix4.rotationZ(sliderVal1),
                //transform: Matrix4.identity(),
                //transform: Matrix4.identity()..rotateZ(pi / 2),

                //Random Number
                //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),

                child: Center(
                  child:
                      Text("NIC Kurukshetra", style: TextStyle(fontSize: 20.0)),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
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
          CustSlider(
              widthVal: 250,
              maxValue: 60,
              minValue: 10,
              divide: 10,
              propText: '   transform:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          // CustomValues(
          //     datatype: FontWeight.values,
          //     defaultVal: _fontWeight,
          //     propText: '   fontWeight:',
          //     onValueChanged: (onValueChanged1) {
          //       setState(() {
          //         _fontWeight = onValueChanged1;
          //       });
          //     }),
          // CustColor(
          //   propText: "   color:",
          //   startColor: selectColor,
          //   onValueChange: (value) {
          //     setState(() {
          //       selectColor = value;
          //     });
          //   },
          // )
        ]),
      ),
    );
  }
}
