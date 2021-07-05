//  \lib/API/models/HomeScreen_API.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment1/Homepage.dart';
import 'package:flutter_tutorial/API/models/Assignment2/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment3/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment4/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment5/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment6/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment7/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment8/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment9/HomePage.dart';
import 'package:flutter_tutorial/API/models/Assignment10/HomePage.dart';
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
                      HomePage6(),
                      "lib/API/models/Assignment6/HomePage.dart",
                      "Local File \n1.json"),
                  ButtonsCode(
                      HomePage7(),
                      "lib/API/models/Assignment7/HomePage.dart",
                      "Local File \n2.json"),
                  ButtonsCode(
                      HomePage8(),
                      "lib/API/models/Assignment8/HomePage.dart",
                      "Local File \n3.json"),
                  ButtonsCode(
                      HomePage9(),
                      "lib/API/models/Assignment9/HomePage.dart",
                      "Local File \n4.json"),
                  ButtonsCode(
                      HomePage10(),
                      "lib/API/models/Assignment10/HomePage.dart",
                      "Local File \n5.json"),
                  ButtonsCode(
                      HomePage1(),
                      "lib/API/models/Assignment1/HomePage.dart",
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
                      "Receipe Search"),
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
