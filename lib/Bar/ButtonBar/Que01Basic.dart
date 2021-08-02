// lib/Bar\BottomBar\Que01Basic.dart
//Arun Alignment,ButtonMinWidth,ButtonPadding, Buttonheight,verticalDirection

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01ButtonBar11 extends StatefulWidget {
  @override
  _Que01ButtonBar11State createState() => _Que01ButtonBar11State();
}

class _Que01ButtonBar11State extends State<Que01ButtonBar11> {
  double buttonPadding = 18;
  double buttonheight = 20;
  Alignment alignment = Alignment.centerLeft;

  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.end;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/Kurukshetra.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: alignment,
                          child: Text(
                            'ButtonBar Demo',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.orange[100],
                  child: ButtonBar(
                    alignment: mainAxisAlignment,
                    buttonHeight: 1,
                    buttonPadding: EdgeInsets.all(buttonPadding),
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: const Text('SHARE'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('EXPLORE'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
              maxValue: 100,
              minValue: 10,
              divide: 10,
              propText: '   buttonPadding:',
              sliderVal: buttonPadding,
              onValueChange: (onChange) {
                setState(() {
                  buttonPadding = onChange;
                });
              }),
          // CustSlider(
          //     widthVal: 150,
          //     maxValue: 100,
          //     minValue: 10,
          //     divide: 10,
          //     propText: '   verticalDirection Pending:',
          //     sliderVal: buttonPadding,
          //     onValueChange: (onChange) {
          //       setState(() {
          //         buttonPadding = onChange;
          //       });
          //     }),
          // CustSlider(
          //     widthVal: 200,
          //     maxValue: 5,
          //     minValue: 0,
          //     divide: 10,
          //     propText: '   buttonheight:',
          //     sliderVal: buttonheight,
          //     onValueChange: (onChange) {
          //       setState(() {
          //         buttonheight = onChange;
          //       });
          //     }),
          CustAlignment(
              propText: "   alignment:",
              defaultAlignment: alignment,
              onValueChange: (value) {
                setState(() {
                  alignment = value;
                });
              }),
          CustomValues(
              datatype: MainAxisAlignment.values,
              defaultVal: mainAxisAlignment,
              propText: "   main:",
              onValueChanged: (value) {
                setState(() {
                  mainAxisAlignment = value;
                });
              })
        ]),
      ),
    );
  }
}
