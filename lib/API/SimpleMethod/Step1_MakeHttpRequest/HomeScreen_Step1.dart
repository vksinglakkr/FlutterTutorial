//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step1_MakeHttpRequest/Que02Step1.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step1_MakeHttpRequest/Que03Step1.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step1_MakeHttpRequest/Step1BasicNotes.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step1_MakeHttpRequest/Que01Step1.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPIStep1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Make an \nHttp request")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Step1Basic(),
                      "lib/API/Step1_MakeHttpRequest/Step1BasicNotes.dart",
                      "Basic Notes-Some websites having API for testing"),
                  ButtonsCode(
                      Que01Step1(),
                      "lib/API/Step1_MakeHttpRequest/Que01Step1.dart",
                      "API - https://reqres.in/api/users?page=2"),
                  ButtonsCode(
                      Que02Step1(),
                      "lib/API/Step1_MakeHttpRequest/Que02Step1.dart",
                      "API - search for the brand “maybelline”"),
                  ButtonsCode(
                      Que03Step1(),
                      "lib/API/Step1_MakeHttpRequest/Que03Step1.dart",
                      "Data stored in local variable"),
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
