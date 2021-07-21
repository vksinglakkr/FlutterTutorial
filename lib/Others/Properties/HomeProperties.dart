import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FontWeight _fontWeight = FontWeight.w900;
  double sliderVal1 = 180;
  bool isSelected = false;
//  AnimationCurve dropDownValue;
  FontStyle _fontStyle = FontStyle.normal;
  final List<String> _fontFamily = <String>["Roboto", "Qahiri", "Pacifico"];
  int _currentFontIndex = 0;
//  int _count = 0;

  //1.  fontWeight
  //2.  fontSize
  //3.  fontFamily
  //4.  fontStyle

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[]),
    );
  }

//  1.
//----------
//fontWeight
//----------
  Widget dropDownfontWeight(BuildContext context) {
    return ListTile(
      title: const Text('fontWeight:'),
      trailing: DropdownButton<FontWeight>(
        value: _fontWeight,
        onChanged: (FontWeight newVal) {
          if (newVal != null) {
            setState(() => _fontWeight = newVal);
          }
        },
        items: FontWeight.values
            .map((FontWeight val) => DropdownMenuItem(
                  value: val,
                  child: Text(val.toString()
//                              .substring('WrapAlignment.'.length)
                      ),
                ))
            .toList(),
      ),
    );
  }

//  2.
//--------
//fontSize
//--------
  Widget dropDownfontSize(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('fontSize:'),
        SizedBox(
            width: 250,
            child: Slider(
              value: sliderVal1,
              min: 6,
              max: 200,
              divisions: 10,
              label: sliderVal1.toStringAsFixed(0),
              onChanged: (val) {
                setState(() {
                  sliderVal1 = val;
                });
              },
            )),
      ],
    );
  }

//  3.
//----------
//fontFamily
//----------
  Widget dropDownfontFamily(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("    fontFamily:"),
        Container(
          child: DropdownButton(
            value: _currentFontIndex,
            items: <DropdownMenuItem>[
              DropdownMenuItem(
                value: 0,
                child: Text(_fontFamily[0]),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text(_fontFamily[1]),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text(_fontFamily[2]),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _currentFontIndex = value;
              });
            },
          ),
        ),
      ],
    );
  }

//  4.
//---------
//fontStyle
//---------
  Widget dropDownfontStyle(BuildContext context) {
    return ListTile(
      title: const Text('fontStyle:'),
      trailing: DropdownButton<FontStyle>(
        value: _fontStyle,
        onChanged: (FontStyle newVal) {
          if (newVal != null) {
            setState(() => _fontStyle = newVal);
          }
        },
        items: FontStyle.values
            .map((FontStyle val) => DropdownMenuItem(
                  value: val,
                  child: Text(val.toString()
//                              .substring('WrapAlignment.'.length)
                      ),
                ))
            .toList(),
      ),
    );
  }

//Last Bracket
}
