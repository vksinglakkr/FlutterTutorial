// /lib/Others/Wrap/Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter
class Que05 extends StatefulWidget {
  @override
  _Que05State createState() => _Que05State();
}

class _Que05State extends State<Que05> {
  TabBarIndicatorSize _tabBarIndicatorSize = TabBarIndicatorSize.tab;
  double radiusVal = 10;

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
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(radiusVal),
              color: Colors.greenAccent,
            ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('indicator:'),
            SizedBox(
                width: 200,
                child: Slider(
                  value: radiusVal,
                  min: 1,
                  max: 50,
                  onChanged: (val) {
                    setState(() {
                      radiusVal = val;
                    });
                  },
                )),
          ],
        ),
        Text('Border, Shadow, gradient, backgroundColor all can be set'),
      ]),
    );
  }
}
