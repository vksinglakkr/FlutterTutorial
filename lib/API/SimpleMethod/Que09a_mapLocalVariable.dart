//lib\API\SimpleMethod\Que09a_mapLocalVariable.dart

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class User {
  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  User(Map<String, dynamic> data) {
    name = data['name'];
    height = data['height'];
    mass = data['mass'];
    hairColor = data['hair_color'];
    skinColor = data['skin_color'];
    eyeColor = data['eye_color'];
    birthYear = data['birth_year'];
    gender = data['gender'];
  }
}

class Que09a extends StatefulWidget {
  @override
  _Que09aState createState() => _Que09aState();
}

class _Que09aState extends State<Que09a> {
  final String url1 =
      "https://medium.com/flutter-community/how-to-parse-json-in-flutter-for-beginners-8074a68d7a79";
  var user = User(json.decode(
      '{"name" : "Luke Skywalker", "height" : "172", "mass" : "77", "hair_color" : "blond", "skin_color" : "fair", "eye_color" : "blue", "birth_year" : "19BBY", "gender" : "male"}'));
//      '{"name" : "Luke Skywalker", "height" : "172", "mass" : "77", "hair_color" : "blond", "skin_color" : "fair", "eye_color" : "blue", "birth_year" : "19BBY", "gender" : "male"} {"name" : "C-3PO", "height" : "167", "mass" : "75", "hair_color" : "NA", "skin_color" : "gold", "eye_color" : "yellow", "birth_year" : "112BBY", "gender" : "NA"} {"name": "R2-D2", "height" : "96", "mass" : "32", "hair_color" : "NA", "skin_color": "white, blue", "eye_color": "red","birth_year": "33BBY","gender" : "NA"} {"name" : "Darth Vader", "height" : "202", "mass" : "136", "hair_color" : "none", "skin_color" : "white", "eye_color" : "yellow", "birth_year" : "41BBY","gender" : "male"}'));
  // var user = User(mapResponse);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Data defined in \nlocal variable'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("List View"),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(
                    "Name: ${user.name}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Height: ${user.height}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text(
                  //   "Height: " + mapResponse[index]['height'].toString(),
                  //   style: TextStyle(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Divider(height: 30),
                ],
              );
            },
            itemCount: 1,
          )
        ],
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
