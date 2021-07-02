//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment1/Homepage.dart';
import 'package:flutter_tutorial/API/models/Assignment2/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment3/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment4/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment5/HomePage.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPIModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("models")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      HomePage1(),
                      "lib/API/models/Assignment1/JsonParseDemo.dart",
                      "ListView.builder\nJsonParse Demo"),
                  ButtonsCode(
                      HomePage2(),
                      "lib/API/models/Assignment2/HomePage.dart",
                      "ListView.builder\nbrand “maybelline”"),
                  ButtonsCode(
                      HomePage3(),
                      "lib/API/models/Assignment3/HomePage.dart",
                      "FutureBuilder, SnapShot \njsonplaceholder"),
                  ButtonsCode(
                      HomePage4(),
                      "lib/API/models/Assignment4/HomePage.dart",
                      "FutureBuilder, SnapShot\nOpenWeather"),
                  ButtonsCode(
                      HomePage5(),
                      "lib/API/models/Assignment5/HomePage.dart",
                      "swapi.dev/api/people"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
