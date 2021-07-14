import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  static const Map<int, Color> frequencyOptions = {
    0: Colors.amber,
    1: Colors.red,
  };

  int _frequencyValue = 0;

//  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              frequencyOptions[_frequencyValue].toString(),
            ),
            //   DropdownButton(
            //     items: frequencyOptions
            //         .map((value, description) {
            //           return MapEntry(
            //               description,
            //               DropdownMenuItem<int, String>(
            //                 value: value,
            //                 child: Text(description).toString(),
            //               ));
            //         })
            //         .values
            //         .toList(),
            //     value: _frequencyValue,
            //     onChanged: (newValue) {
            //       setState(() {
            //         _frequencyValue = newValue;
            //       });
            //     },
            //   ),
          ],
        ),
      ),
    );
  }
}
