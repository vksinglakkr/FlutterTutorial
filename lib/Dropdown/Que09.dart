import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Button Example - FlutterCorner"),
        backgroundColor: Colors.black,
      ),
      body: DropDownList(),
    );
  }
}

class DropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String dropdownValue = 'First';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          underline: Container(),
          icon: Icon(Icons.arrow_downward),
          iconSize: 20.0, // can be changed, default: 24.0
          iconEnabledColor: Colors.red,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['First', 'Second', 'Third', 'Fourth']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
