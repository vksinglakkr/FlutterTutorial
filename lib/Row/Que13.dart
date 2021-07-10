// /lib/Row/Que13.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter
class Que13 extends StatefulWidget {
  @override
  _Que13State createState() => _Que13State();
}

class _Que13State extends State<Que13> {
  final kElements = <Widget>[
    RandomContainer(
      width: 50,
      height: 100,
    ),
    RandomContainer(
      width: 60,
      height: 80,
    ),
    RandomContainer(
      width: 70,
      height: 60,
    ),
    RandomContainer(
      width: 80,
      height: 40,
    ),
  ];

  bool _isRow = true;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    final _appbarButtons = _getBottomBar();
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Properties Ex2.")),
      body: _buildBody(),
      bottomNavigationBar: _appbarButtons,
      floatingActionButton: WidgetFab(),
    );
  }

  Widget _buildBody() => Center(
        child: Container(
          margin: EdgeInsets.all(10),
          color: Colors.grey.shade300,
          child: _isRow
              ? Row(
                  mainAxisAlignment: _mainAxisAlignment,
                  crossAxisAlignment: _crossAxisAlignment,
                  mainAxisSize: _mainAxisSize,
                  children: kElements,
                )
              : Column(
                  mainAxisAlignment: _mainAxisAlignment,
                  crossAxisAlignment: _crossAxisAlignment,
                  mainAxisSize: _mainAxisSize,
                  children: kElements,
                ),
        ),
      );

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio<bool>(
                    value: true,
                    groupValue: this._isRow,
                    onChanged: (bool value) {
                      setState(() => this._isRow = value);
                    }),
                const Text('Row'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio<bool>(
                    value: false,
                    groupValue: this._isRow,
                    onChanged: (bool value) {
                      setState(() => this._isRow = value);
                    }),
                const Text('Column'),
              ],
            ),
          ],
        ),
        ListTile(
          title: const Text('mainAxisSize:'),
          trailing: DropdownButton<MainAxisSize>(
            value: _mainAxisSize,
            onChanged: (MainAxisSize newVal) {
              if (newVal != null) {
                setState(() => this._mainAxisSize = newVal);
              }
            },
            items: MainAxisSize.values
                .map((MainAxisSize val) => DropdownMenuItem(
                      value: val,
                      child: Text(
                          val.toString().substring('MainAxisSize.'.length)),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('mainAxisAlignment:'),
          trailing: DropdownButton<MainAxisAlignment>(
            value: _mainAxisAlignment,
            onChanged: (MainAxisAlignment newVal) {
              if (newVal != null) {
                setState(() => this._mainAxisAlignment = newVal);
              }
            },
            items: MainAxisAlignment.values
                .map((MainAxisAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('MainAxisAlignment.'.length)),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          title: const Text('crossAxisAlignment:'),
          trailing: DropdownButton<CrossAxisAlignment>(
            value: _crossAxisAlignment,
            onChanged: (CrossAxisAlignment newVal) {
              if (newVal != null) {
                setState(() => this._crossAxisAlignment = newVal);
              }
            },
            items: CrossAxisAlignment.values
                .map((CrossAxisAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('CrossAxisAlignment.'.length)),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
