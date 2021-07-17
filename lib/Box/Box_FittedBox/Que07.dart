import 'package:flutter/material.dart';

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiny logo'),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FlutterLogo(),
              ),
            ],
          ),
          Spacer(flex: 1),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
