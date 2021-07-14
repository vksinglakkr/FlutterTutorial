// /lib/Dropdown/Que02.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  static const Map<String, Duration> frequencyOptions = {
    "30 seconds": Duration(seconds: 30),
    "1 minute": Duration(minutes: 1),
    "2 minutes": Duration(minutes: 2),
  };

  Duration _frequencyValue = Duration(seconds: 30);

//  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_frequencyValue.toString()),
            DropdownButton<Duration>(
              items: frequencyOptions
                  .map((description, value) {
                    return MapEntry(
                        description,
                        DropdownMenuItem<Duration>(
                          value: value,
                          child: Text(description),
                        ));
                  })
                  .values
                  .toList(),
              value: _frequencyValue,
              onChanged: (newValue) {
                setState(() {
                  _frequencyValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
