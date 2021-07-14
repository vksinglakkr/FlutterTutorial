// libRowHomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Row/Que01Basic.dart';
import 'package:flutter_tutorial/Row/Que04.dart';
import 'package:flutter_tutorial/Row/Que05.dart';
import 'package:flutter_tutorial/Row/Que06.dart';
import 'package:flutter_tutorial/Row/Que07.dart';
import 'package:flutter_tutorial/Row/Que08.dart';
import 'package:flutter_tutorial/Row/Que09.dart';
import 'package:flutter_tutorial/Row/Que10.dart';
import 'package:flutter_tutorial/Row/Que11.dart';
import 'package:flutter_tutorial/Row/Que12.dart';
import 'package:flutter_tutorial/Row/Que13.dart';
import 'package:flutter_tutorial/Row/Que15.dart';
import 'package:flutter_tutorial/Row/Que14.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que02Expanded.dart';

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Row/Column")),
        body: SafeArea(
            child: Center(
          child: Container(
              child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Basic(), "lib/Row/Que01Basic.dart", "Properties Ex.1"),
                ButtonsCode(Que13(), "lib/Row/Que13.dart", "Properties Ex.2"),
                ButtonsCode(Que14(), "lib/Row/Que14.dart", "Properties Ex.3"),
                ButtonsCode(
                    Que12(), "lib/Row/Que12.dart", "Overflow (Text) Ex.1"),
                ButtonsCode(
                    Que04(), "lib/Row/Que04.dart", "Overflow (Text) Ex.2"),
                ButtonsCode(
                    Que0211(), "lib/Row/Que02Expanded.dart", "Overflow (Icon)"),
                ButtonsCode(
                    Que05(), "lib/Row/Que05.dart", "Unbounded (ListView)"),
                ButtonsCode(
                    Que06(), "lib/Row/Que06.dart", "Unbounded (TextField)"),
                ButtonsCode(Que07(), "lib/Row/Que07.dart", "Loose Fit Ex.1"),
                ButtonsCode(Que15(), "lib/Row/Que15.dart", "Loose Fit Ex.2"),
                ButtonsCode(Que08(), "lib/Row/Que08.dart", "Loose Fit Ex.3"),
                ButtonsCode(Que09(), "lib/Row/Que09.dart", "Tight Fit"),
                ButtonsCode(Que10(), "lib/Row/Que10.dart", "Expanded Ex.1"),
                ButtonsCode(Que11(), "lib/Row/Que11.dart", "Expanded Ex.2"),
              ],
            ),
          )),
        )),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
