//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment1/Homepage.dart';
import 'package:flutter_tutorial/API/models/Assignment2/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment3/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment4/HomePage.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPIModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Projects")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      HomePage3(),
                      "lib/API/models/Assignment3/HomePage.dart",
                      "Project 3 - Using FutureBuilder”"),
                  ButtonsCode(
                      HomePage1(),
                      "lib/API/Assignment1/JsonParseDemo.dart",
                      "Project - JsonParse Demo"),
                  ButtonsCode(HomePage2(), "lib/API/Assignment2/HomePage.dart",
                      "Project - brand “maybelline”"),
                  ButtonsCode(HomePage4(), "lib/API/Assignment4/HomePage.dart",
                      "Project - OpenWeather using FutureBuilder"),
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
