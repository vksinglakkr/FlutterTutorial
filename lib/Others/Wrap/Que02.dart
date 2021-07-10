// /lib/Others/Wrap/Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter
class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  final kElements = <Widget>[
    RandomContainer(
      width: 80,
      height: 80,
      child: Text(
        "A",
        style: TextStyle(fontSize: 20),
      ),
    ),
    RandomContainer(
      width: 80,
      height: 80,
      child: Text(
        "B",
        style: TextStyle(fontSize: 20),
      ),
    ),
    RandomContainer(
      width: 80,
      height: 80,
      child: Text(
        "C",
        style: TextStyle(fontSize: 20),
      ),
    ),
    RandomContainer(
      width: 80,
      height: 80,
      child: Text(
        "D",
        style: TextStyle(fontSize: 20),
      ),
    ),
    RandomContainer(
      width: 80,
      height: 80,
      child: Text(
        "E",
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];

  WrapAlignment _wrapAlignment = WrapAlignment.start;
  WrapAlignment _wraprunAlignment = WrapAlignment.start;
  TextDirection _textDirection = TextDirection.ltr;
  Axis _axis = Axis.horizontal;
  VerticalDirection _verticalDirection = VerticalDirection.down;

  @override
  Widget build(BuildContext context) {
    final _appbarButtons = _getBottomBar();
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _appbarButtons,
      floatingActionButton: WidgetFab(),
    );
  }

  Widget _buildBody() => Center(
        child: Container(
            height: 400,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            color: Colors.grey.shade300,
            child: Wrap(
              spacing: 10,
              runSpacing: 20,
              runAlignment: _wraprunAlignment,
              alignment: _wrapAlignment,
              textDirection: _textDirection,
              direction: _axis,
              verticalDirection: _verticalDirection,
              children: kElements,
            )),
      );

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text("spacing: 10.0,     runSpacing:20.0,"),
        ListTile(
          title: const Text('alignment:'),
          trailing: DropdownButton<WrapAlignment>(
            value: _wrapAlignment,
            onChanged: (WrapAlignment newVal) {
              if (newVal != null) {
                setState(() => this._wrapAlignment = newVal);
              }
            },
            items: WrapAlignment.values
                .map((WrapAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(
                          val.toString().substring('WrapAlignment.'.length)),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('runAlignment:'),
          trailing: DropdownButton<WrapAlignment>(
            value: _wraprunAlignment,
            onChanged: (WrapAlignment newVal) {
              if (newVal != null) {
                setState(() => this._wraprunAlignment = newVal);
              }
            },
            items: WrapAlignment.values
                .map((WrapAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(
                          val.toString().substring('WrapAlignment.'.length)),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('textDirection:'),
          trailing: DropdownButton<TextDirection>(
            value: _textDirection,
            onChanged: (TextDirection newVal) {
              if (newVal != null) {
                setState(() => this._textDirection = newVal);
              }
            },
            items: TextDirection.values
                .map((TextDirection val) => DropdownMenuItem(
                      value: val,
                      child: Text(
                          val.toString().substring('TextDirection.'.length)),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('direction:'),
          trailing: DropdownButton<Axis>(
            value: _axis,
            onChanged: (Axis newVal) {
              if (newVal != null) {
                setState(() => this._axis = newVal);
              }
            },
            items: Axis.values
                .map((Axis val) => DropdownMenuItem(
                      value: val,
                      child: Text(val.toString().substring('Axis.'.length)),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('verticalDirection:'),
          trailing: DropdownButton<VerticalDirection>(
            value: _verticalDirection,
            onChanged: (VerticalDirection newVal) {
              if (newVal != null) {
                setState(() => this._verticalDirection = newVal);
              }
            },
            items: VerticalDirection.values
                .map((VerticalDirection val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('VerticalDirection.'.length)),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
