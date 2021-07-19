//  \lib/Align\Que03Properties.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que23Strut extends StatefulWidget {
  @override
  _Que23StrutState createState() => _Que23StrutState();
}

class _Que23StrutState extends State<Que23Strut> {
  double sliderVal1 = 10;
  double sliderVal2 = 10;
  double sliderVal3 = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("strutStyle")),
        body: Center(
          child: Column(
            children: [
              Text(
                  "style: TextStyle(fontSize: ${sliderVal3.toStringAsFixed(0)})"),
              Container(
                color: Colors.grey.shade300,
                height: 150,
                width: 325,
                child: Center(
                  child: Text(
                    "Setting the strutStyle property gives you the ability to fine-tune the separation between rows of text. For example, if you have a number of Text widgets that have differing font style and sizes, you can specify the strutStyle to ensure the same spacing between each row.",
                    style: TextStyle(
                      fontSize: sliderVal3,
                      backgroundColor: Colors.amber,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Spacer(flex: 1),
              Text(
                  "strutStyle:${sliderVal2.toStringAsFixed(1)}, style: TextStyle(fontSize: ${sliderVal1.toStringAsFixed(0)})"),
              Container(
                color: Colors.grey.shade300,
                height: 150,
                width: 325,
                child: Center(
                  child: Text(
                    "Setting the strutStyle property gives you the ability to fine-tune the separation between rows of text. For example, if you have a number of Text widgets that have differing font style and sizes, you can specify the strutStyle to ensure the same spacing between each row.",
                    strutStyle: StrutStyle(
                      fontSize: sliderVal2,
                    ),
                    style: TextStyle(
                      fontSize: sliderVal1,
                      backgroundColor: Colors.amber,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('    fontSize:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal3,
                      min: 10,
                      max: 24,
                      divisions: 10,
                      label: sliderVal3.toStringAsFixed(0),
                      onChanged: (val) {
                        setState(() {
                          sliderVal3 = val;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('    fontSize:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal1,
                      min: 10,
                      max: 24,
                      divisions: 10,
                      label: sliderVal1.toStringAsFixed(0),
                      onChanged: (val) {
                        setState(() {
                          sliderVal1 = val;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('    strutStyle:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal2,
                      min: 10,
                      max: 24,
                      divisions: 10,
                      label: sliderVal2.toStringAsFixed(0),
                      onChanged: (val) {
                        setState(() {
                          sliderVal2 = val;
                        });
                      },
                    )),
              ],
            ),
          ]),
    );
  }
}
