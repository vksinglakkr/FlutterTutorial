// libButtonsRadioButtonHomeScreen_Radio.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01RadioButton.dart';

class HomeRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Radio Button")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Radio11(),
                    "libButtonsRadioButtonQue01RadioButton.dart",
                    "Bulb On/Off"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
