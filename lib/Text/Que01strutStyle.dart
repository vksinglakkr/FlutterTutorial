// lib/Text\Que01strutStyle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01strut extends StatefulWidget {
  @override
  _Que01strutState createState() => _Que01strutState();
}

class _Que01strutState extends State<Que01strut> {
  bool boolVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("strutStyle")),
      body: Center(
        child: Column(children: [
          Divider(color: Colors.black, thickness: 5, indent: 20, endIndent: 20),
          Text.rich(
            TextSpan(
              text: '---------         ---------\n',
              style: TextStyle(
                fontSize: 14,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '^^^M^^^\n',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: 'M------M\n',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontSize: 14,
              height: 1,
              forceStrutHeight: boolVal,
            ),
          ),
          Divider(color: Colors.black, thickness: 5, indent: 20, endIndent: 20),
          Text.rich(
            TextSpan(
              text: '       he candle flickered\n',
              style: TextStyle(fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                  text: 'T',
                  style: TextStyle(fontSize: 37),
                ),
                TextSpan(
                  text: 'in the moonlight as\n',
                  style: TextStyle(fontSize: 14),
                ),
                TextSpan(
                  text: 'Dash the bird fluttered\n',
                  style: TextStyle(fontSize: 14),
                ),
                TextSpan(
                  text: 'off into the distance.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontSize: 14,
              forceStrutHeight: boolVal,
            ),
          ),
        ]),
      ),
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
            Text('forceStrutHeight:'),
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
