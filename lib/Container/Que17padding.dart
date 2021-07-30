// lib/Container\Que17padding.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1711 extends StatefulWidget {
  @override
  _Que1711State createState() => _Que1711State();
}

class _Que1711State extends State<Que1711> {
  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que17.png";

  final String video1 = "JDDoN2THwug";

  final random = Random();

  double sliderVal1 = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Padding")),
        body: Column(
          children: [
            Center(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(sliderVal1),
                //padding: EdgeInsets.zero,
                //padding: EdgeInsets.symmetric(horizontal: 30,),
                //padding: double.infinity,
                //padding: EdgeInsets.only(left: 20.0,bottom: 30.0,),
                //padding: EdgeInsets.fromLTRB(40.0,50.0),

                //Random Number
                // padding: EdgeInsets.all(random.nextInt(5).toDouble()),
                child:
                    Text("NIC Kurukshetra", style: TextStyle(fontSize: 30.0)),
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
              maxValue: 40,
              minValue: 2,
              divide: 10,
              propText: '   padding:',
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

//Note: Also check Padding as Widgets

