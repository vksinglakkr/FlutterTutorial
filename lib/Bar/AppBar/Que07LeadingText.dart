import 'package:flutter/material.dart';

class Que07LeadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Leading"),
        leadingWidth: 100, // default is 56
      ),
      body: Center(),
    );
  }
}
