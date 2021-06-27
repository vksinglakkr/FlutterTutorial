import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPIgetX extends StatelessWidget {
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
                  // ButtonsCode(
                  //     JsonParseDemo(),
                  //     "lib/API/Assignment1/JsonParseDemo.dart",
                  //     "Assignment - JsonParse Demo"),
                  // ButtonsCode(HomePage2(), "lib/API/Assignment2/HomePage.dart",
                  //     "Assignment - brand “maybelline”"),
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
