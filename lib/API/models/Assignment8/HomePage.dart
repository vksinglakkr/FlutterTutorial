// lib/API/models/Assignment8/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/Services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_tutorial/API/models/Assignment8/Three.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePage8 extends StatefulWidget {
  HomePage8() : super();
  @override
  _HomePage8State createState() => _HomePage8State();
}

class _HomePage8State extends State<HomePage8> {
  final String url1 = "https://flutter25.com/#content";
  final String video1 = "RUCIt_Lske4";
  final String image1 = "assets/help/API/API_3_json.png";

  Three threeData;
  Future getData() async {
    String jsonString = await rootBundle.loadString("assets/localJson/3.json");
    final jsonResponse = json.decode(jsonString);
    Three three = new Three.fromJson(jsonResponse);
    setState(() {
      threeData = three;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Local, Map->Map (3.json)"),
      ),
      body: Center(
        child: Container(
            color: Colors.white,
            child: Text(
                '${threeData.id} - ${threeData.name} - ${threeData.property.width} - ${threeData.property.height}')),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
