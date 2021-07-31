import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disabled checkBox'),
      ),
      body: Center(
        child: Container(
          child: Checkbox(
            tristate: true,
            onChanged: null,
            value: null,
          ),
        ),
      ),
    );
  }
}
