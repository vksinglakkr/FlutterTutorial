import 'package:flutter/material.dart';

class Que01MnemonicCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mnemonic Code'),
      ),
      body: Center(
        child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                '''appBar: AppBar(title: Text(' .... '))''',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
