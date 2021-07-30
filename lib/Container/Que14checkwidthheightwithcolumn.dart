// lib/Container\Que14checkwidthheightwithcolumn.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1411 extends StatefulWidget {
  @override
  _Que1411State createState() => _Que1411State();
}

class _Que1411State extends State<Que1411> {
  double sliderVal1 = 10;
  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que14.png";

  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Check width height with column")),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text('NIC Kurukshetra',
                  style: TextStyle(fontSize: sliderVal1)),
            ),
          ],
        ),
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
              maxValue: 60,
              minValue: 10,
              divide: 10,
              propText: '   style:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          // CustomValues(
          //     datatype: FontWeight.values,
          //     defaultVal: _fontWeight,
          //     propText: '   fontWeight:',
          //     onValueChanged: (onValueChanged1) {
          //       setState(() {
          //         _fontWeight = onValueChanged1;
          //       });
          //     }),
          // CustColor(
          //   propText: "   color:",
          //   startColor: selectColor,
          //   onValueChange: (value) {
          //     setState(() {
          //       selectColor = value;
          //     });
          //   },
          // )
        ]),
      ),
    );
  }
}
