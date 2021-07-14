// /lib/Others/Wrap/Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter

class Que04 extends StatefulWidget {
  @override
  _Que04State createState() => _Que04State();
}

class _Que04State extends State<Que04> {
  TabBarIndicatorSize _tabBarIndicatorSize = TabBarIndicatorSize.tab;
  double sliderVal = 5;
  final List<Color> _colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];
  final List<String> _colorToShow = <String>[
    "Colors.red",
    "Colors.blue",
    "Colors.green",
    "Colors.yellow",
    "Colors.orange"
  ];
  int _currentColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _appbarButtons = _getBottomBar();
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Tabs"),
          bottom: TabBar(
            indicatorSize: _tabBarIndicatorSize,
            indicatorWeight: sliderVal,
            indicatorColor: _colors[_currentColorIndex],
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'bike',
              ),
            ],
          ),
        ),
        body: _buildBody(),
        bottomNavigationBar: _appbarButtons,
        floatingActionButton: WidgetFab(),
      ),
    );
  }

  Widget _buildBody() => TabBarView(
        children: [
          Icon(Icons.directions_car, size: 50),
          Icon(Icons.directions_transit, size: 50),
          Icon(Icons.directions_bike, size: 50),
        ],
      );

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ListTile(
          title: const Text('indicatorSize:'),
          trailing: DropdownButton<TabBarIndicatorSize>(
            value: _tabBarIndicatorSize,
            onChanged: (TabBarIndicatorSize newVal) {
              if (newVal != null) {
                setState(() => this._tabBarIndicatorSize = newVal);
              }
            },
            items: TabBarIndicatorSize.values
                .map((TabBarIndicatorSize val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('TabBarIndicatorSize.'.length)),
                    ))
                .toList(),
          ),
        ),
        DropdownButton(
          value: _currentColorIndex,
          items: <DropdownMenuItem>[
            DropdownMenuItem(
              value: 0,
              child: Text(_colorToShow[0]),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text(_colorToShow[1]),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text(_colorToShow[2]),
            ),
            DropdownMenuItem(
              value: 3,
              child: Text(_colorToShow[3]),
            ),
            DropdownMenuItem(
              value: 4,
              child: Text(_colorToShow[4]),
            ),
          ],
          onChanged: (value) {
            setState(() {
              _currentColorIndex = value;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('indicatorWeight:'),
            SizedBox(
                width: 200,
                child: Slider(
                  value: sliderVal,
                  min: 1,
                  max: 10,
                  onChanged: (val) {
                    setState(() {
                      sliderVal = val;
                    });
                  },
                )),
          ],
        ),
      ]),
    );
  }
}
