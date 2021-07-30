import "package:flutter/material.dart";
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03ThemeText extends StatefulWidget {
  @override
  _Que03ThemeTextState createState() => _Que03ThemeTextState();
}

class _Que03ThemeTextState extends State<Que03ThemeText> {
  double sliderVal1 = 18;
  FontWeight _fontWeight = FontWeight.bold;
  Color selectColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("textTheme:"),
        textTheme: TextTheme(
            headline6: TextStyle(
                color: selectColor,
                fontSize: sliderVal1,
                fontWeight: _fontWeight)),
      ),
      body: Center(
        child: Card(
          color: Colors.amber,
          child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('''      textTheme: TextTheme(
            headline6: TextStyle(
                color: $selectColor,
                fontSize: ${sliderVal1.toStringAsFixed(1)},
                fontWeight: $_fontWeight)),''')),
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
              widthVal: 250,
              maxValue: 100,
              minValue: 10,
              divide: 10,
              propText: '   fontsize:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          CustomValues(
              datatype: FontWeight.values,
              defaultVal: _fontWeight,
              propText: '   fontWeight:',
              onValueChanged: (onValueChanged1) {
                setState(() {
                  _fontWeight = onValueChanged1;
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
