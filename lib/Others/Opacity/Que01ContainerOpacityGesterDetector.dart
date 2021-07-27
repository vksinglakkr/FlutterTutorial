// lib/Opacity\Que01ContainerOpacityGesterDetector.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0111> {
  final String image1 = "assets/help/Opacity/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Opacity of Container")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: sliderVal1,
                child: Container(height: 200, width: 200, color: Colors.red),
              ),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  double sliderVal1 = 0.5;
  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//        CustSlider(250, 5, 100, 10, propText, sliderVal,onValueChange),
        CustSlider(
            widthVal: 250,
            maxValue: 1,
            minValue: 0,
            divide: 10,
            propText: "opacity:",
            sliderVal: sliderVal1,
            onValueChange: (value) {
              setState(() {
                sliderVal1 = value;
              });
            })
      ]),
    );
  }
}
