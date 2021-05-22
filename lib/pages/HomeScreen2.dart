import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _toggle ? Colors.orange : null,
                  size: 200,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Switch(
                    value: _toggle,
                    onChanged: (bool value) {
                      setState(() => _toggle = value);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
