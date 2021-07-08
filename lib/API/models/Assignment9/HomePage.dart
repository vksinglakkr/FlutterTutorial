// lib/API/models/Assignment9/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/Services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_tutorial/API/models/Assignment9/Four.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePage9 extends StatefulWidget {
  HomePage9() : super();
  @override
  _HomePage9State createState() => _HomePage9State();
}

class _HomePage9State extends State<HomePage9> {
  final String url1 = "https://flutter25.com/#content";
  final String video1 = "jSGNzH0MzEA";
  final String image1 = "assets/help/API/API_4_json.png";

  Four fourData;
  Future getData() async {
    String jsonString = await rootBundle.loadString("assets/localJson/4.json");
    final jsonResponse = json.decode(jsonString);
    Four four = new Four.fromJson(jsonResponse);
    setState(() {
      fourData = four;
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
        title: WidgetAppBar("Local, Map->1 List->2 Map (4.json)"),
      ),
      body: Center(
        child: Container(
            color: Colors.white,
            child: Text(
                '${fourData.id} - ${fourData.flightName} - ${fourData.passengers[0].id} - ${fourData.passengers[0].checkedBags}')),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
