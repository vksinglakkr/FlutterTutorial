// lib/Bar\AppBar\Que01Actions.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que11ActionEx4 extends StatefulWidget {
  @override
  _Que11ActionEx4State createState() => _Que11ActionEx4State();
}

class _Que11ActionEx4State extends State<Que11ActionEx4> {
  double sliderVal1 = 5;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("IconButton"),
          actions: [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sliderVal1),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.amber,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Wrap(
                        children: [
                          Text(
                            '''actions: [ Padding(
      padding: EdgeInsets.symmetric(horizontal: ${sliderVal1.toStringAsFixed(0)}),
      child: Icon(Icons.search),),
    ])''',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
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
              maxValue: 40,
              minValue: 2,
              divide: 10,
              propText: '   padding:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
        ]),
      ),
    );
  }
}
