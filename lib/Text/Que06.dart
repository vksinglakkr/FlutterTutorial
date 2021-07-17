import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06soft extends StatefulWidget {
  @override
  _Que06softState createState() => _Que06softState();
}

class _Que06softState extends State<Que06soft> {
  TextOverflow _textOverflow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("softWrap")),
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            Container(
              color: Colors.lightBlue,
              width: 222,
              height: 52,
              child: Text(
                'This is very longggggg. This is very longggggg. This is very longggggg. This is very longggggg.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Spacer(flex: 1),
            Container(
              color: Colors.lightBlue,
              width: 222,
              height: 52,
              child: Text(
                'This is very longggggg. This is very longggggg. This is very longggggg. This is very longggggg.',
                style: TextStyle(fontSize: 16),
                overflow: _textOverflow,
                softWrap: true,
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ListTile(
          title: const Text('overflow:'),
          trailing: DropdownButton<TextOverflow>(
            value: _textOverflow,
            onChanged: (TextOverflow newVal) {
              if (newVal != null) {
                setState(() => this._textOverflow = newVal);
              }
            },
            items: TextOverflow.values
                .map((TextOverflow val) => DropdownMenuItem(
                      value: val,
                      child: Text(
                          val.toString().substring('TextOverflow.'.length)),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
