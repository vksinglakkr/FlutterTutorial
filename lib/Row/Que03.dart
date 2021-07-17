import 'package:flutter/material.dart';

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextDirection.rtl'),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          Row(
            children: <Widget>[
              const FlutterLogo(),
              const Expanded(
                child: Text(
                    "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          Spacer(flex: 1),
          Row(
            textDirection: TextDirection.rtl,
            children: <Widget>[
              const FlutterLogo(),
              const Expanded(
                child: Text(
                    "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ],
      ),
    );
  }
}
