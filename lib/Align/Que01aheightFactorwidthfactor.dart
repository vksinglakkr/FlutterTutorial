import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class AlignmentWidget extends StatefulWidget {
  @override
  _AlignmentWidgetState createState() => _AlignmentWidgetState();
}

class _AlignmentWidgetState extends State {
  double heightFactorVal1 = 5;
  double heightFactorVal2 = 5;
  double heightFactorVal3 = 2;
  double containerh = 100;

  Alignment _alignment = Alignment.bottomLeft;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title: Text("Sample Align App"),

      body: Center(
        child: Column(children: [
          Spacer(flex: 1),

          Container(
            color: Colors.yellowAccent,
            height: containerh,
            //== 0 ? heightFactorVal1 : null,
            width: 100.0,
            child: FractionallySizedBox(
              heightFactor: heightFactorVal1,
              alignment: Alignment.center,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ),

          //        Spacer(flex: 1),
          Container(
            height: 80.0,
            width: 80.0,
            color: Colors.greenAccent,
            child: Center(
              heightFactor: heightFactorVal2,
              child: FlutterLogo(
                size: 30.0,
              ),
            ),
          ),

          Spacer(flex: 1),
          Container(
            color: Colors.redAccent,
//            height: 150.0,
//            width: 150.0,
            child: Align(
              heightFactor: heightFactorVal3,
              alignment: _alignment,
              child: FlutterLogo(
                size: 30.0,
              ),
            ),
          ),
          Spacer(flex: 1),
        ]),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("FractionallySizedBox"),
            ],
          ),
          Row(
            children: [
              CustSlider(
                onValueChange: (val) {
                  setState(() {
                    heightFactorVal1 = val;
                  });
                },
                widthVal: 150,
                divide: 10,
                maxValue: 50,
                minValue: 1,
                propText: "   heightFactor:",
                sliderVal: heightFactorVal1,
              ),
            ],
          ),
          Row(
            children: [
              Text("Center"),
              CustSlider(
                onValueChange: (val) {
                  setState(() {
                    heightFactorVal2 = val;
                  });
                },
                widthVal: 150,
                divide: 10,
                maxValue: 100,
                minValue: 1,
                propText: "   (heightFactor:)",
                sliderVal: heightFactorVal2,
              ),
            ],
          ),
          Row(
            children: [
              Text("Align"),
              CustSlider(
                onValueChange: (val) {
                  setState(() {
                    heightFactorVal3 = val;
                  });
                },
                widthVal: 150,
                divide: 10,
                maxValue: 4.5,
                minValue: 1,
                propText: "   (heightFactor:)",
                sliderVal: heightFactorVal3,
              ),
            ],
          ),
          Row(children: [
            CustAlignment(
                propText: "   Alignment:",
                //datatype: [],
                defaultAlignment: _alignment,
                onValueChange: (value) {
                  setState(() {
                    _alignment = value;
                  });
                }),
          ])
        ],
      ),
    );
  }
}
