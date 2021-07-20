// /lib/Row/Que06.dart
import 'package:flutter/material.dart';

class Que06 extends StatefulWidget {
  @override
  _Que06State createState() => _Que06State();
}

class _Que06State extends State<Que06> {
  final String video1 = "bNvtd_ozziI";
  bool boolVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: boolVal,
      // resizeToAvoidBottomPadding: true, // deprecated
//      appBar: AppBar(title: WidgetAppBar("Unbounded (TextField)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                            hintText:
                                "TextField in Row needs to be wrapped in Flexible",
                            helperText:
                                "TextField inside of Row causes layout exception: \nUnable to calculate size"))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                        decoration:
                            InputDecoration(hintText: "wrapped in Expanded"))),
              ],
            ),
            Row(
              children: [
                SizedBox(
                    width: 300,
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "wrapped in SizedBox",
                    ))),
              ],
            ),
            Row(
              children: [
                Container(
                    width: 300,
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: "wrapped in Container",
                    ))),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('resizeToAvoidBottomInset:'),
              Row(children: <Widget>[
                Radio<bool>(
                    value: true,
                    groupValue: boolVal,
                    onChanged: (bool value) {
                      setState(() => boolVal = value);
                    }),
                const Text('true'),
              ]),
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
        ],
      ),
    );
  }
}
