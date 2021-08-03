// lib/Card\Que01CardContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Card11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Simple Card ');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Card/Que01.png";
  final String video1 = "JDDoN2THwug";
  bool boolVal1 = false;
  bool boolVal2 = false;

  double sliderelevation = 10;
  double sliderMargin = 10;
  double sliderBorderRadius = 10;
  Color _startcolor = Colors.orange;
  Color _startShadow = Colors.brown;
  Clip clipBehavior = Clip.antiAlias;
  BorderStyle borderStyle = BorderStyle.none;

  double sliderWidth = 5;
  Color _startcolor1 = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: WidgetAppBar(widget.title)),
      body: Column(
        children: [
          // Card(
          //   child: Container(
          //     height: 100,
          //     width: 400,
          //     child: Text(
          //       "Sample 1",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     decoration: BoxDecoration(color: Colors.red),
          //   ),
          // ),
          // Card(
          //   child: Container(
          //     height: 100,
          //     width: 400,
          //     child: Text(
          //       "Sample 1",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     decoration: BoxDecoration(color: Colors.blue),
          //   ),
          // ),
          Center(
            child: Container(
              child: Card(
                semanticContainer: boolVal2,
                clipBehavior: clipBehavior,
                shadowColor: _startShadow,
                color: _startcolor,
                borderOnForeground: boolVal1,
                margin: EdgeInsets.all(sliderMargin),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: sliderWidth,
                      color: _startcolor1,
                      style: borderStyle),
                  borderRadius: BorderRadius.circular(sliderBorderRadius),
                ),
                elevation: sliderelevation,
                child: Container(
                    width: 320,
                    height: 100,
                    child: Center(child: Text('Hello World'))),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getBottomBar(),
    ));
  }

  Widget getBottomBar() {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Material(
            color: Theme.of(context).primaryColorLight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(mainAxisSize: MainAxisSize.min, children: [
                  CustSlider(
                    onValueChange: (val) {
                      setState(() {
                        sliderelevation = val;
                      });
                    },
                    widthVal: 100,
                    divide: 10,
                    maxValue: 100,
                    minValue: 1,
                    propText: "   elevation:",
                    sliderVal: sliderelevation,
                  ),
                  CustomValues(
                    datatype: Clip.values,
                    defaultVal: clipBehavior,
                    propText: "   clipBehavior:",
                    onValueChanged: (dynamic newValue) {
                      setState(() {
                        clipBehavior = newValue;
                      });
                    },
                  ),

                  Row(
                    children: [
                      CustSlider(
                        onValueChange: (val) {
                          setState(() {
                            sliderBorderRadius = val;
                          });
                        },
                        widthVal: 100,
                        divide: 10,
                        maxValue: 100,
                        minValue: 1,
                        propText: "   shape:",
                        sliderVal: sliderBorderRadius,
                      ),
                      CustSlider(
                        onValueChange: (val) {
                          setState(() {
                            sliderMargin = val;
                          });
                        },
                        widthVal: 0,
                        divide: 10,
                        maxValue: 200,
                        minValue: 80,
                        propText: "   margin:",
                        sliderVal: sliderMargin,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      CustColor(
                        propText: "   color:",
                        startColor: _startcolor,
                        onValueChange: (value) {
                          setState(() {
                            _startcolor = value;
                          });
                        },
                      ),
                      CustColor(
                        propText: "   shadowColor:",
                        startColor: _startShadow,
                        onValueChange: (value) {
                          setState(() {
                            _startShadow = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                          '''shape:(side: width:,color:,style:,borderRadius:)''')
                    ],
                  ),
                  CustomValues(
                    datatype: BorderStyle.values,
                    defaultVal: borderStyle,
                    propText: "   borderStyle:",
                    onValueChanged: (dynamic newValue) {
                      setState(() {
                        borderStyle = newValue;
                      });
                    },
                  ),
                  CustSlider(
                    onValueChange: (val) {
                      setState(() {
                        sliderWidth = val;
                      });
                    },
                    widthVal: 250,
                    divide: 10,
                    maxValue: 20,
                    minValue: 10,
                    propText: "   width:",
                    sliderVal: sliderWidth,
                  ),
                  CustColor(
                    propText: "   borderColor:",
                    startColor: _startcolor1,
                    onValueChange: (value) {
                      setState(() {
                        _startcolor1 = value;
                      });
                    },
                  ),
                  // Row(
                  //   children: [
                  //     Text('   semanticContainer:'),
                  //     Radio(
                  //         value: true,
                  //         groupValue: boolVal2,
                  //         onChanged: (dynamic value) {
                  //           setState(() {
                  //             boolVal2 = value;
                  //           });
                  //         }),
                  //     Text('true'),
                  //     Radio(
                  //         value: false,
                  //         groupValue: boolVal2,
                  //         onChanged: (dynamic value) {
                  //           setState(() {
                  //             boolVal2 = value;
                  //           });
                  //         }),
                  //     Text('false'),
                  //   ],
                  // )
                ])
              ],
            )));
  }
}
