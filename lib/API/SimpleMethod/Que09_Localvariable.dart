//lib\API\SimpleMethod\Que09_Localvariable.dart

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09 extends StatefulWidget {
  @override
  _Que09State createState() => _Que09State();
}

class _Que09State extends State<Que09> {
  final String url1 =
      "https://medium.com/flutter-community/how-to-parse-json-in-flutter-for-beginners-8074a68d7a79";
  var listResponse = json.decode(
      '[{"name": "Luke Skywalker","height": "172","mass": "77","hair_color": "blond","skin_color": "fair","eye_color": "blue","birth_year": "19BBY","gender": "male"},{"name": "C-3PO","height": "167","mass": "75","hair_color": "n/a","skin_color": "gold","eye_color": "yellow","birth_year": "112BBY","gender": "n/a"},{"name": "R2-D2","height": "96","mass": "32","hair_color": "n/a","skin_color": "white, blue","eye_color": "red","birth_year": "33BBY","gender": "n/a"},{"name": "Darth Vader","height": "202","mass": "136","hair_color": "none",    "skin_color": "white","eye_color": "yellow",    "birth_year": "41.9BBY","gender": "male"  }]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data defined in \nlocal variable'),
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
                    "Name: " + listResponse[index]['name'].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Height: " + listResponse[index]['height'].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(height: 30),
                ],
              );
            },
            itemCount: listResponse == null ? 0 : listResponse.length,
          )
        ],
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
