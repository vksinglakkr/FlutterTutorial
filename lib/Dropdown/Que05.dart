// /lib/Dropdown/Que05.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05DropDown extends StatefulWidget {
  @override
  _Que05DropDownState createState() => _Que05DropDownState();
}

class _Que05DropDownState extends State<Que05DropDown> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: DropdownButton<String>(
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.black),

            items: <String>[
              'Android',
              'IOS',
              'Flutter',
              'Node',
              'Java',
              'Python',
              'PHP',
            ].map<DropdownMenuItem<String>>((element) {
              return DropdownMenuItem<String>(
                value: element,
                child: Text(element),
              );
            }).toList(),
            hint: Text(
              "Please choose a langauage",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
