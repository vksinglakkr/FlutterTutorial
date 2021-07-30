// lib/Bar\AppBar\Que02CenterText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que12ShapeEx1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que12ShapeEx1> {
  double sliderVal1 = 5;
  BorderStyle style = BorderStyle.solid;
  Color selectColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Shape: \nStadiumBorder()"),
          shape: StadiumBorder(
              side: BorderSide(
                  color: selectColor, width: sliderVal1, style: style)),
        ),
        body: Center(
          child: Card(
            color: Colors.amber,
            child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text('''shape: StadiumBorder(
side: 
BorderSide(color: $selectColor, 
width: ${sliderVal1.toStringAsFixed(1)}, 
style: $style))''')),
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
              widthVal: 250,
              maxValue: 20,
              minValue: 2,
              divide: 10,
              propText: '   width:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
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
