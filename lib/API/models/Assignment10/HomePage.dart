// lib/API/models/Assignment10/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/Services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_tutorial/API/models/Assignment10/Five.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePage10 extends StatefulWidget {
  HomePage10() : super();
  @override
  _HomePage10State createState() => _HomePage10State();
}

class _HomePage10State extends State<HomePage10> {
  final String url1 = "https://flutter25.com/#content";
  final String video1 = "jSGNzH0MzEA";
  Five fiveData;
  Future getData() async {
    String jsonString = await rootBundle.loadString("assets/localJson/5.json");
    final jsonResponse = json.decode(jsonString);
    Five five = new Five.fromJson(jsonResponse);
    setState(() {
      fiveData = five;
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
        title: WidgetAppBar("Local Json File \n5.json"),
      ),
      body: Center(
        child: Container(
            color: Colors.white,
            child: Text(
                '${fiveData.classes[0].id} - ${fiveData.classes[0].level}- ${fiveData.classes[0].name}')),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
