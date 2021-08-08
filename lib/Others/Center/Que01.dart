import 'package:flutter/material.dart';

import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class QueHeightWidth extends StatefulWidget {
  @override
  _QueHeightWidthState createState() => _QueHeightWidthState();
}

class _QueHeightWidthState extends State<QueHeightWidth> {
  double _heightFactor = 2;
  double _widthFactor = 3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('heightfactor: & widthfactor:'),
      ),
      body: Column(
        children: <Widget>[
          Text("Text wrapped in Center"),
          Center(
            heightFactor: _heightFactor,
            child: Text('Logo'),
          ),
          Spacer(flex: 1),
          Text("Container - Center - Container"),
          Container(
            color: Colors.amber,
            child: Center(
              heightFactor: _heightFactor,
              widthFactor: _widthFactor,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
      bottomNavigationBar: _getBottomBar(),
    ));
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CustSlider(
                onValueChange: (val) {
                  setState(() {
                    _heightFactor = val;
                  });
                },
                widthVal: 200,
                divide: 10,
                maxValue: 5,
                minValue: 2,
                propText: "   heightFactor:",
                sliderVal: _heightFactor,
              ),
            ],
          ),
          Row(
            children: [
              CustSlider(
                onValueChange: (val) {
                  setState(() {
                    _widthFactor = val;
                  });
                },
                widthVal: 200,
                divide: 10,
                maxValue: 5,
                minValue: 2,
                propText: "   (_widthFactor:)",
                sliderVal: _widthFactor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
