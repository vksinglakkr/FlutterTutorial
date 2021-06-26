//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step2_DecodeResponse_in_JSON/HomeScreen_Step2.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step3_MapJSON/HomeScreen_Step3.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step1_MakeHttpRequest/HomeScreen_Step1.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Step 1 to 3")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      HomeAPIStep1(),
                      "lib/API/Step1_MakeHttpRequest/HomeScreen_Step1.dart",
                      "Step 1 - Make an HTTP Request"),
                  ButtonsCode(
                      HomeAPIStep2(),
                      "lib/API/Step2_MakeHttpRequest/HomeScreen_Step2.dart",
                      "Step 2 - Convert/Save the response in JSON and JSON format in MAP"),
                  ButtonsCode(
                      HomeAPIStep3(),
                      "lib/API/Step3_MakeHttpRequest/HomeScreen_Step3.dart",
                      "Step 3 - Store/display data"),
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
