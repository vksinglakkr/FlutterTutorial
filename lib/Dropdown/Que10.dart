import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que10 extends StatefulWidget {
  @override
  _Que10State createState() => new _Que10State();
}

class _Que10State extends State<Que10> {
  List<GenderModel> genderModelList;
  String selectedGender = '1';

  @override
  Widget build(BuildContext context) {
    genderModelList = [
      GenderModel('1', "Male"),
      GenderModel('2', "Female"),
      GenderModel('3', "Other")
    ];

    return new Scaffold(
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: DropdownButton<String>(
          hint: new Text("Select Gender"),
          value: selectedGender,
          isDense: true,
          onChanged: (String newValue) {
            setState(() {
              selectedGender = newValue;
            });
//          print(selectedGender);
          },
          items: genderModelList.map((GenderModel map) {
            return new DropdownMenuItem<String>(
              value: map.id,
              child: Text(map.name, style: TextStyle(color: Colors.black)),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class GenderModel {
  String id;
  String name;
  @override
  // String toString() {
  //   return '$id $name';
  // }

  GenderModel(this.id, this.name);
}
