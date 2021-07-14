// /lib/Others/Wrap/Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter
class Que06 extends StatefulWidget {
  @override
  _Que06State createState() => _Que06State();
}

class _Que06State extends State<Que06> {
  TabBarIndicatorSize _tabBarIndicatorSize = TabBarIndicatorSize.tab;

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
//                color: Colors.greenAccent,
                image: DecorationImage(
                    image: AssetImage('assets/images/Kurukshetra.jpg'),
                    fit: BoxFit.fitWidth)),
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
        Text('Border, Shadow, gradient, backgroundColor all can be set'),
      ]),
    );
  }
}
