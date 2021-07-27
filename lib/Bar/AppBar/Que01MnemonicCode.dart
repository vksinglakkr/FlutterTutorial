import 'package:flutter/material.dart';

class Que01MnemonicCode extends StatelessWidget {
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
              Image(image: AssetImage("assets/help/Bar/AppBar/Que01.png")),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
