//  \lib/Align\Que03Properties.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que23Font extends StatefulWidget {
  @override
  _Que23FontState createState() => _Que23FontState();
}

class _Que23FontState extends State<Que23Font> {
  double sliderVal1 = 8;
  double sliderVal2 = 8;
  FontWeight _fontWeight = FontWeight.normal;
  FontStyle _fontStyle = FontStyle.normal;
  final List<String> _fontFamily = <String>["Qahiri", "Roboto", "Pacifico"];
  int _currentFontIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("fontWeight, fontSize, \nfontStyle")),
        body: Center(
          child: Column(
            children: [
              Spacer(flex: 1),
              Text(
                  "textScalefactor:${sliderVal2.toStringAsFixed(1)}\nstyle: TextStyle(\nfontWeight: $_fontWeight, \nfontSize: ${sliderVal1.toStringAsFixed(0)})"),
              Container(
                color: Colors.grey.shade300,
                height: 150,
                width: 325,
                child: Center(
                  child: Text(
                    "NIC",
                    textScaleFactor: sliderVal2,
                    style: TextStyle(
                      fontSize: sliderVal1,
                      fontWeight: _fontWeight,
                      fontStyle: _fontStyle,
                      fontFamily: _fontFamily[_currentFontIndex],
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
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
          children: <Widget>[
            ListTile(
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
            ),
            ListTile(
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
            ),
            CustSlider(
                widthVal: 250,
                maxValue: 24,
                minValue: 6,
                divide: 10,
                propText: "   fontSize:",
                sliderVal: sliderVal1,
                onValueChange: (value) {
                  setState(() {
                    sliderVal1 = value;
                  });
                }),
            Row(
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
            ),
            CustSlider(
                widthVal: 150,
                maxValue: 23,
                minValue: 10,
                divide: 10,
                propText: "   textScaleFactor:",
                sliderVal: sliderVal2,
                onValueChange: (value) {
                  setState(() {
                    sliderVal2 = value;
                  });
                }),
          ]),
    );
  }
}
