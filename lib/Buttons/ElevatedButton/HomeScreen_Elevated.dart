//  lib\Buttons\RadioButton\HomeScreen_Elevated.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que09Color.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que10BorderColor.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01AllProperties.dart';
import 'Que02Snackbar.dart';
import 'Que03onPressed.dart';
import 'Que04LongPress.dart';
import 'Que05FontSize.dart';
import 'Que06usingPadding.dart';
import 'Que07PaddingLRTB.dart';
import 'Que08PaddingOnly.dart';

class HomeElevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Elevated Button")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Elevated11(),
                    "lib\Buttons\ElevatedButton\Que01AllProperties.dart",
                    "Elevated-All Properties"),
                ButtonsCode(
                    Que02Elevated11(),
                    "lib\Buttons\ElevatedButton\Que02Snackbar.dart",
                    "Elevated - Snackbar"),
                ButtonsCode(
                    Que03Elevated11(),
                    "lib\Buttons\ElevatedButton\Que03onPressed.dart",
                    "Elevated - onPressed"),
                ButtonsCode(
                    Que04Elevated11(),
                    "lib\Buttons\ElevatedButton\Que04LongPress.dart",
                    "Elevated - LongPress"),
                ButtonsCode(
                    Que05Elevated11(),
                    "lib\Buttons\ElevatedButton\Que05FontSize.dart",
                    "Elevated - FontSize"),
                ButtonsCode(
                    Que06Elevated11(),
                    "lib\Buttons\ElevatedButton\Que06usingPadding.dart",
                    "Elevated - Padding"),
                ButtonsCode(
                    Que07Elevated11(),
                    "lib\Buttons\ElevatedButton\Que07PaddingLRTB.dart",
                    "Elevated - Padding LRTB"),
                ButtonsCode(
                    Que08Elevated11(),
                    "lib\Buttons\ElevatedButton\Que08PaddingOnly.dart",
                    "Elevated - Padding only"),
                ButtonsCode(
                    Que09Elevated11(),
                    "lib\Buttons\ElevatedButton\Que09Color.dart",
                    "How to change BackGround Color?"),
                ButtonsCode(
                    Que10Elevated11(),
                    "lib\Buttons\ElevatedButton\Que10Color.dart",
                    "How to change Border Color?"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
