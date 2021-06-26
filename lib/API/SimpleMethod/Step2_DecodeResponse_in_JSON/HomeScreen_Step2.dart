//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step2_DecodeResponse_in_JSON/Que01Step2.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step2_DecodeResponse_in_JSON/Que02Step2.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step2_DecodeResponse_in_JSON/Step2BasicNotes.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPIStep2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar(
                "Step 2 - Convert/Save the response in JSON and JSON format in MAP")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Step2Basic(),
                      "lib/API/Step2_DecodeResponse_in_JSON/Step2BasicNotes.dart",
                      "Basic Notes-Step 2"),
                  ButtonsCode(
                      Que01Step2(),
                      "lib/API/Step2_DecodeResponse_in_JSON/Que01Step2.dart",
                      "API - https://reqres.in/api/users?page=2"),
                  ButtonsCode(
                      Que02Step2(),
                      "lib/API/Step2_DecodeResponse_in_JSON/Que01Step2.dart",
                      "API - search for the brand “maybelline”"),
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
