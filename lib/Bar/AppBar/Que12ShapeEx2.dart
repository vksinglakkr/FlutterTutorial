// lib/Bar\AppBar\Que12ShapeEx2.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que12ShapeEx2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que12ShapeEx2> {
  double sliderVal1 = 20;
  double sliderVal2 = 5;
  BorderStyle style = BorderStyle.solid;
  Color selectColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Shape: \nRoundedRectangle()"),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: selectColor, width: sliderVal2, style: style),
              borderRadius: BorderRadius.circular(sliderVal1)),
        ),
        body: Center(
          child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('''shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(${sliderVal1.toStringAsFixed(1)})),shape: StadiumBorder(
              side: BorderSide(
                  color: $selectColor, width: ${sliderVal2.toStringAsFixed(1)}, style: $style)),''',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
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
              widthVal: 220,
              maxValue: 100,
              minValue: 8,
              divide: 10,
              propText: 'borderRadius:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          CustSlider(
              widthVal: 250,
              maxValue: 20,
              minValue: 2,
              divide: 10,
              propText: '   width:',
              sliderVal: sliderVal2,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal2 = onChange;
                });
              }),
          CustomValues(
              datatype: BorderStyle.values,
              defaultVal: style,
              propText: '   style:',
              onValueChanged: (onValueChanged1) {
                setState(() {
                  style = onValueChanged1;
                });
              }),
          CustColor(
            propText: "   color:",
            startColor: selectColor,
            onValueChange: (value) {
              setState(() {
                selectColor = value;
              });
            },
          )
        ]),
      ),
    );
  }
}
