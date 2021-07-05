// lib/API/models/Assignment6/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/Services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_tutorial/API/models/Assignment6/One.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePage6 extends StatefulWidget {
  HomePage6() : super();
  @override
  _HomePage6State createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  final String url1 = "https://flutter25.com/#content";
  final String video1 = "RUCIt_Lske4";

  One oneData;
  Future getData() async {
    String jsonString = await rootBundle.loadString("assets/localJson/1.json");
    final jsonResponse = json.decode(jsonString);
    One one = new One.fromJson(jsonResponse);
    setState(() {
      oneData = one;
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
        title: WidgetAppBar("Local Json File \n1.json"),
      ),
      body: Center(
        child: Container(
            color: Colors.white,
            child: Text('${oneData.id} - ${oneData.name} - ${oneData.gender}')),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
