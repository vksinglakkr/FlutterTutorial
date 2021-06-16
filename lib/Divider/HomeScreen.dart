//  \lib\Divider\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01DividerTheme2.dart';

class HomeDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Divider")),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            ButtonsCode(Que0111(), "lib\CustomWidgets\Que01DividerTheme2.dart",
                "Divider using ThemeData"),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}
