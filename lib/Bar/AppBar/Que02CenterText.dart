// lib/Bar\AppBar\Que02CenterText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02AppBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02AppBar11> {
  bool boolVal = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("centerTitle:"),
        centerTitle: boolVal,
        //AppBar(title: Align (child: Text("AppBar Centered Title"),
        //         alignment: Alignment.center));
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
                    child: Text(
                      '''centerTitle: $boolVal''',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
      bottomNavigationBar: _getBottomBar(),
    ));
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
