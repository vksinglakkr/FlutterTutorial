import 'package:flutter/material.dart';

class Que10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disabled Switch'),
      ),
      body: Center(
        child: Container(
          child: Switch(
            onChanged: null,
            value: false,
          ),
        ),
      ),
    );
  }
}
