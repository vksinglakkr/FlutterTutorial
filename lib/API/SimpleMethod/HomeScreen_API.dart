//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/BasicNotes.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que01.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que02.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que03.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que04.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que05.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que06.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que07.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Json.decode")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Step1Basic(),
                      "lib/API/SimpleMethod/BasicNotes.dart", "Basic Notes"),
                  ButtonsCode(HomePage6(), "lib/API/SimpleMethod/Que06.dart",
                      "json.decode, Single Record \nhttps://Swapi.dev.api/people/1"),
                  ButtonsCode(HomePage7(), "lib/API/SimpleMethod/Que07.dart",
                      "json.decode, Single Record \nhttps://Swapi.dev.api/starships/9"),
                  ButtonsCode(HomePage3(), "lib/API/SimpleMethod/Que03.dart",
                      "json.decode, Single Record \nhttps://Swapi.dev.api/planets/3"),
                  ButtonsCode(
                      HomePage5(),
                      "lib/API/models/Assignment5/HomePage.dart",
                      "json.decode, Single Record \nOpenWeather"),
                  ButtonsCode(Que02(), "lib/API/SimpleMethod/Que02.dart",
                      "https://newsapi.org/"),
                  ButtonsCode(HomePage4(), "lib/API/SimpleMethod/Que04.dart",
                      "https://jsonplaceholder.typicode.com/albums/1"),
                  ButtonsCode(Que01(), "lib/API/SimpleMethod/Que01.dart",
                      "json.decode, ListView.Builder\nhttps://reqres.in/api/users?page2"),
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
