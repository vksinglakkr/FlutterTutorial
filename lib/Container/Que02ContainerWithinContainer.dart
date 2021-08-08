// lib/Container\Que02ContainerWithinContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Container11 extends StatefulWidget {
  @override
  _Que02Container11State createState() => _Que02Container11State();
}

class _Que02Container11State extends State<Que02Container11> {
  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que02.png";

  final String video1 = "JDDoN2THwug";
  double sliderVal1 = 250;
  double sliderVal2 = 250;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Container within Container")),
        bottomNavigationBar: _getBottomBar(),
        body: Center(
          child: Container(
            width: sliderVal1,
            height: sliderVal2,
            color: Colors.green,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: Text(
                  "It will take height, width of parent but color of child",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
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
              maxValue: 300,
              minValue: 8,
              divide: 10,
              propText: '  height:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          CustSlider(
              widthVal: 250,
              maxValue: 300,
              minValue: 8,
              divide: 10,
              propText: '   width:',
              sliderVal: sliderVal2,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal2 = onChange;
                });
              }),
        ]),
      ),
    );
  }
}
