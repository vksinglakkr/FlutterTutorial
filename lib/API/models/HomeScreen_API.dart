//  \lib/API/models/HomeScreen_API.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment1/Homepage.dart';
import 'package:flutter_tutorial/API/models/Assignment11/HomePage.dart';
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
                  Center(child: Text("Local", style: TextStyle(fontSize: 16))),
                  ButtonsCode(
                      HomePage6(),
                      "lib/API/models/Assignment6/HomePage.dart",
                      "Map with only key values (1.json)"),
                  ButtonsCode(
                      HomePage7(),
                      "lib/API/models/Assignment7/HomePage.dart",
                      "List->Map (2.json)"),
                  ButtonsCode(
                      HomePage8(),
                      "lib/API/models/Assignment8/HomePage.dart",
                      "Map->Map (3.json)"),
                  ButtonsCode(
                      HomePage9(),
                      "lib/API/models/Assignment9/HomePage.dart",
                      "Map->1 List->2 Map (4.json)"),
                  ButtonsCode(
                      HomePage10(),
                      "lib/API/models/Assignment10/HomePage.dart",
                      "List->3 Maps (5.json)"),
                  ButtonsCode(
                      HomePage11(),
                      "lib/API/models/Assignment11/HomePage.dart",
                      "Display Product list"),
                  Center(
                      child:
                          Text("Remote Site", style: TextStyle(fontSize: 16))),
                  ButtonsCode(
                      HomePage1(),
                      "lib/API/models/Assignment1/HomePage.dart",
                      "ListView.builder, JsonParse Demo"),
                  ButtonsCode(
                      HomePage2(),
                      "lib/API/models/Assignment2/HomePage.dart",
                      "ListView.builder, Brand “maybelline”"),
                  ButtonsCode(
                      HomePage3(),
                      "lib/API/models/Assignment3/HomePage.dart",
                      "FutureBuilder, SnapShot jsonplaceholder"),
                  ButtonsCode(
                      HomePage4(),
                      "lib/API/models/Assignment4/HomePage.dart",
                      "FutureBuilder, SnapShot OpenWeather"),
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
