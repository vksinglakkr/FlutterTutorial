// /lib/Bar/AppBar/Que06autoEx1maticallyImplyLeading.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

bool boolVal = false;

class Que06autoEx2 extends StatefulWidget {
  @override
  _Que06autoEx2State createState() => _Que06autoEx2State();
}

class _Que06autoEx2State extends State<Que06autoEx2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('automaticallyImplyLeading: Ex1'),
        automaticallyImplyLeading:
            boolVal, //optional: removes the default back arrow
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
            'automaticallyImplyLeading: false \n 1. It removes the default back arrow. (\n It also removes the icon of the drawer.'),
      ),
      floatingActionButton: WidgetFab(),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('automaticallyImplyLeading:'),
            Row(
              children: <Widget>[
                Radio<bool>(
                    value: true,
                    groupValue: boolVal,
                    onChanged: (bool value) {
                      setState(() => boolVal = value);
                    }),
                const Text('true'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio<bool>(
                    value: false,
                    groupValue: boolVal,
                    onChanged: (bool value) {
                      setState(() => boolVal = value);
                    }),
                const Text('false'),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
