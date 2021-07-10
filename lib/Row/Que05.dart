import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Unbounded (ListView)")),
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(flex: 2),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  title: Text(
                      "ListView wrapped in Column.\nNo output. For this we have to set the properties"),
                  subtitle: Text('shrinkWrap: true'),
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.subway),
                  title: Text('Subway'),
                ),
              ],
            ),
            ListView(
//            shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.subway),
                  title: Text('Subway'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
