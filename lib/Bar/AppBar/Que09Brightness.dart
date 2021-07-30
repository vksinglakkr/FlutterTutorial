import "package:flutter/material.dart";
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09Bright extends StatefulWidget {
  @override
  _Que09BrightState createState() => _Que09BrightState();
}

class _Que09BrightState extends State<Que09Bright> {
  double sliderVal1 = 20;
  double sliderVal2 = 56;
  double sliderVal3 = 0.5;
  Brightness brightness = Brightness.dark;
  Color shadowColor = Colors.green;
  Color backgroundColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brightness, Elevation,\nBackground Color"),
        backgroundColor: backgroundColor,
        elevation: sliderVal1,
        brightness: brightness,
        shadowColor: shadowColor,
        toolbarHeight: sliderVal2, //default is 56
        toolbarOpacity: sliderVal3,
        //        brightness: Brightness.light,
      ),
      body: Center(
        child: Card(
          color: Colors.amber,
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(''' appBar: AppBar(backgroundColor: $backgroundColor,
        elevation: ${sliderVal1.toStringAsFixed(1)},
        brightness: ${brightness.toString()},
        shadowColor: ${shadowColor.toString()},
        toolbarHeight: ${sliderVal2.toStringAsFixed(1)},toolbarOpacity: ${sliderVal3.toStringAsFixed(1)},
              ), ''')

              // Text('''shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(${sliderVal1.toStringAsFixed(1)})),shape: StadiumBorder(
              // side: BorderSide(
              //     color: $selectColor, width: ${sliderVal2.toStringAsFixed(1)}, style: $style)),''',
              //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustSlider(
                  widthVal: 200,
                  maxValue: 100,
                  minValue: 10,
                  divide: 10,
                  propText: '   elevation:',
                  sliderVal: sliderVal1,
                  onValueChange: (onChange) {
                    setState(() {
                      sliderVal1 = onChange;
                    });
                  }),
              CustSlider(
                  widthVal: 200,
                  maxValue: 100,
                  minValue: 10,
                  divide: 10,
                  propText: '   toolbarHeight:',
                  sliderVal: sliderVal2,
                  onValueChange: (onChange) {
                    setState(() {
                      sliderVal2 = onChange;
                    });
                  }),
              CustSlider(
                  widthVal: 200,
                  maxValue: 1,
                  minValue: 0,
                  divide: 10,
                  propText: '   toolbarOpacity:',
                  sliderVal: sliderVal3,
                  onValueChange: (onChange) {
                    setState(() {
                      sliderVal3 = onChange;
                    });
                  }),
              CustomValues(
                  datatype: Brightness.values,
                  defaultVal: brightness,
                  propText: '   brightness:',
                  onValueChanged: (onValueChanged1) {
                    setState(() {
                      brightness = onValueChanged1;
                    });
                  }),
              CustColor(
                propText: "   shadowColor:",
                startColor: shadowColor,
                onValueChange: (value) {
                  setState(() {
                    shadowColor = value;
                  });
                },
              ),
              CustColor(
                propText: "   backgroundColor:",
                startColor: backgroundColor,
                onValueChange: (value) {
                  setState(() {
                    backgroundColor = value;
                  });
                },
              )
            ]),
      ),
    );
  }
}
