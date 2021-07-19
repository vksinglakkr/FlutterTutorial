//  \lib/Align\Que03Properties.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que23TextDirection extends StatefulWidget {
  @override
  _Que23AlignmentState createState() => _Que23AlignmentState();
}

class _Que23AlignmentState extends State<Que23TextDirection> {
  TextDirection _textDirection = TextDirection.ltr;
  TextAlign _textAlign = TextAlign.center;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("textAlign, textDirection")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Text("textAlign: $_textAlign"),
              RandomContainer(
                height: 100,
                width: 325,
                child: Text(
                  "Kurukshetra",
                  style: TextStyle(fontSize: 16),
                  textDirection: _textDirection,
                  textAlign: _textAlign,
                ),
              ),
              Spacer(flex: 1),
              Text("Directionality(...)"),
              RandomContainer(
                height: 100,
                width: 325,
                child: Directionality(
                  textDirection: _textDirection,
                  child: Text(
                    "textDirection: $_textDirection",
                    style: TextStyle(fontSize: 16),
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
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ListTile(
          title: const Text('textDirection:'),
          trailing: DropdownButton<TextDirection>(
            value: _textDirection,
            onChanged: (TextDirection newVal) {
              if (newVal != null) {
                setState(() => _textDirection = newVal);
              }
            },
            items: TextDirection.values
                .map((TextDirection val) => DropdownMenuItem(
                      value: val,
                      child: Text(val.toString()
//                              .substring('WrapAlignment.'.length)
                          ),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('textAlign:'),
          trailing: DropdownButton<TextAlign>(
            value: _textAlign,
            onChanged: (TextAlign newVal) {
              if (newVal != null) {
                setState(() => _textAlign = newVal);
              }
            },
            items: TextAlign.values
                .map((TextAlign val) => DropdownMenuItem(
                      value: val,
                      child: Text(val.toString()
//                              .substring('WrapAlignment.'.length)
                          ),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
