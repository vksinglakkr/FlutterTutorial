// lib/Container\Que28gradient.dart
import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2811 extends StatefulWidget {
  @override
  _Que2811State createState() => _Que2811State();
}

class _Que2811State extends State<Que2811> {
  double sliderVal1 = 0;
  double sliderVal2 = 0;
  double sliderVal3 = 0;
  double sliderVal4 = 0;
  double sliderVal5 = 0;
  double sliderVal6 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Gradient")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 180,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  tileMode: TileMode.mirror,
                  colors: [
                    Colors.amber,
                    Colors.blue,
                    Colors.red,
                    // Colors.blue,
                    // Colors.black,
                    // Colors.pink
                  ],
                  stops: [
                    sliderVal1,
                    sliderVal2,
                    sliderVal3,
                    // sliderVal4,
                    // sliderVal5,
                    // sliderVal6
                  ], //"colors" and "colorStops" arguments must have equal length.
                  //begin: Alignment.centerLeft,
                  begin: Alignment(-1.0, 1),
                  //begin: FractionalOffset.topLeft,
                  //end: Alignment.centerRight,
                  end: FractionalOffset.centerRight,
                  transform: GradientRotation(math.pi / 4),
                ),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
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
          Text("* The Values must be in ascending order"),
          Text("* If all zero, then Last Color."),
          Text("* If first color=1, then first Color."),
          Row(
            children: [
              SizedBox(width: 50),
              Text("amber"),
              SizedBox(width: 50),
              Text("blue"),
              SizedBox(width: 50),
              Text("red"),
              // SizedBox(width: 20),
              // Text("blue"),
              // SizedBox(width: 18),
              // Text("black"),
              // SizedBox(width: 19),
              // Text("pink"),
            ],
          ),
          Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('stops:'),
              Container(
                  color: Colors.amber,
                  width: 100,
                  child: Slider(
                    value: sliderVal1,
                    min: 0,
                    max: 1,
                    divisions: 10,
                    label: sliderVal1.toStringAsFixed(0),
                    onChanged: (val) {
                      setState(() {
                        sliderVal1 = val;
                        sliderVal2 < sliderVal1
                            ? sliderVal2 = sliderVal1
                            : sliderVal2 = sliderVal2;
                        sliderVal3 < sliderVal2
                            ? sliderVal3 = sliderVal2
                            : sliderVal3 = sliderVal3;
                      });
                    },
                  )),
              Row(
                children: [
                  Container(
                      color: Colors.blue,
                      width: 100,
                      child: Slider(
                        value: sliderVal2,
                        min: 0,
                        max: 1,
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
              Row(
                children: [
                  Container(
                      color: Colors.red,
                      width: 100,
                      child: Slider(
                        value: sliderVal3,
                        min: 0,
                        max: 1,
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(
              //         width: 10,
              //         child: Slider(
              //           value: sliderVal4,
              //           min: 0,
              //           max: 1,
              //           divisions: 10,
              //           label: sliderVal4.toStringAsFixed(0),
              //           onChanged: (val) {
              //             setState(() {
              //               sliderVal4 = val;
              //             });
              //           },
              //         )),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(
              //         width: 10,
              //         child: Slider(
              //           value: sliderVal5,
              //           min: 0,
              //           max: 1,
              //           divisions: 10,
              //           label: sliderVal5.toStringAsFixed(0),
              //           onChanged: (val) {
              //             setState(() {
              //               sliderVal5 = val;
              //             });
              //           },
              //         )),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(
              //         width: 10,
              //         child: Slider(
              //           value: sliderVal6,
              //           min: 0,
              //           max: 1,
              //           divisions: 10,
              //           label: sliderVal6.toStringAsFixed(0),
              //           onChanged: (val) {
              //             setState(() {
              //               sliderVal6 = val;
              //             });
              //           },
              //         )),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
