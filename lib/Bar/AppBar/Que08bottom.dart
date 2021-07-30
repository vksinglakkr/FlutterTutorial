import "package:flutter/material.dart";
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que08bottom extends StatefulWidget {
  @override
  _Que08bottomState createState() => _Que08bottomState();
}

class _Que08bottomState extends State<Que08bottom> {
  double sliderVal1 = 20;
  double sliderVal2 = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom:"),
        bottom: PreferredSize(
            child: Icon(
              Icons.linear_scale,
              size: sliderVal1,
            ),
            preferredSize: Size.fromHeight(sliderVal2)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.amber,
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      '''bottom: 
PreferredSize(
child: Icon(
Icons.linear_scale,
size: ${sliderVal1.toStringAsFixed(0)},),
preferredSize: Size.fromHeight(${sliderVal2.toStringAsFixed(0)})),)''',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Theme.of(context).primaryColorLight,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          CustSlider(
              widthVal: 200,
              maxValue: 70,
              minValue: 8,
              divide: 10,
              propText: '   size:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          CustSlider(
              widthVal: 200,
              maxValue: 100,
              minValue: 2,
              divide: 10,
              propText: '   preferredSize:',
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
