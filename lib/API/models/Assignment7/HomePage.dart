// lib/API/models/Assignment7/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/Services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_tutorial/API/models/Assignment7/Two.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePage7 extends StatefulWidget {
  HomePage7() : super();
  @override
  _HomePage7State createState() => _HomePage7State();
}

class _HomePage7State extends State<HomePage7> {
  final String url1 = "https://flutter25.com/#content";
  final String video1 = "RUCIt_Lske4";
  Two twoData;
  Future getData() async {
    String jsonString = await rootBundle.loadString("assets/localJson/2.json");
    final jsonResponse = json.decode(jsonString);
    Two two = new Two.fromJson(jsonResponse);
    setState(() {
      twoData = two;
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
        title: WidgetAppBar("Local Json File \n2.json"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text("dfg"),
        ),
//                '${twoData.name} - ${twoData.classes[0]} - ${twoData.classes[1]} - ${twoData.classes[2]}')),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
