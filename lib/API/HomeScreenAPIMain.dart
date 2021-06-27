//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/HomeScreen_API.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que05.dart';
import 'package:flutter_tutorial/API/getX/HomeScreen_API.dart';
import 'package:flutter_tutorial/API/models/HomeScreen_API.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeMainAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Different approches")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      HomeAPI(),
                      "lib/API/SimpleMethod/HomeScreen_API.dart",
                      "Method - Http.Response"),
                  ButtonsCode(HomeAPIModel(),
                      "lib/API/models/HomeScreen_API.dart", "Models"),
                  ButtonsCode(HomeAPIgetX(), "lib/API/getX/HomeScreen_API.dart",
                      "getX"),
                  ButtonsCode(
                      HomePage5(),
                      "lib/API/models/Assignment5/HomePage.dart",
                      "json.decode, setState, column \nOpenWeather"),
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
