// lib/Container\Que19margin.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1911 extends StatefulWidget {
  @override
  _Que1911State createState() => _Que1911State();
}

class _Que1911State extends State<Que1911> {
  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que18.png";

  final String video1 = "JDDoN2THwug";

  final random = Random();

  double sliderVal1 = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Margin")),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(sliderVal1),
                //margin: EdgeInsets.all(sliderVal1),
                //margin: EdgeInsets.symmetric(horizontal: 30,),
                //margin: double.infinity,
                //margin: EdgeInsets.only(left: 20.0,bottom: 30.0,),
                //margin: EdgeInsets.fromLTRB(40.0,50.0),

                //Random Number
                // margin: EdgeInsets.all(random.nextInt(5).toDouble()),
                color: Colors.amber,
                width: 260,
                height: 160,
                child: Align(
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
          CustSlider(
              widthVal: 250,
              maxValue: 40,
              minValue: 2,
              divide: 10,
              propText: '   margin:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
        ]),
      ),
    );
  }
}
