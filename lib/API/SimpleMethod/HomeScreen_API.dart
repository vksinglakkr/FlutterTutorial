//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/BasicNotes.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que01.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que02.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que03.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que04.dart';
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
                  ButtonsCode(Que01(), "lib/API/SimpleMethod/Que01.dart",
                      "json.decode, setState, ListView.Builder\nhttps://reqres.in/api/users?page2"),
                  ButtonsCode(Que02(), "lib/API/SimpleMethod/Que02.dart",
                      "https://newsapi.org/"),
                  ButtonsCode(
                      Que03(), "lib/API/SimpleMethod/Que03.dart", "Pending"),
                  ButtonsCode(Que04(), "lib/API/SimpleMethod/Que04.dart",
                      "https://jsonplaceholder.typicode.com/albums/1"),
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
