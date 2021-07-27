import 'package:flutter/material.dart';

class Que15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mnemonic Code'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Spacer(flex: 1),
              Image(
                  image: AssetImage("assets/help/Bar/AppBar/AppBar (3).jpeg")),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
