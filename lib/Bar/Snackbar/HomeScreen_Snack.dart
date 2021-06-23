// lib/Bar\HomeScreen_Snack.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Container/Que31ContainerButton.dart';
import 'package:flutter_tutorial/Container/Que33ContainerButton.dart';
import 'package:flutter_tutorial/ListView/Que43DismisItem.dart';
import 'package:flutter_tutorial/Others/InkWell/Que04InkWell.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Basic.dart';
import 'Que02ColorSnackBar.dart';
import 'Que03Duration.dart';
import 'Que04Action.dart';

class HomeSnack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Snack Bar")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01SnackBar11(),
                      "lib/Bar/Snackbar/Que01Basic.dart",
                      "Don\'t Close on tap outside"),
                  ButtonsCode(
                      Que02SnackBar11(),
                      "lib/Bar/Snackbar/Que02ColorSnackBar.dart",
                      "Elevated Alert Dialog Box"),
                  ButtonsCode(
                      Que03SnackBar11(),
                      "lib/Bar/Snackbar/Que03Duration.dart",
                      "Back Ground Color"),
                  ButtonsCode(Que04SnackBar11(),
                      "lib/Bar/Snackbar/Que04Action.dart", "Back Ground Color"),
                  ButtonsCode(Que04InkWell11(), "lib/InkWell/Que04Inkwell.dart",
                      "Material Touch ripple-Text, Snackbar,Inkwell"),
                  ButtonsCode(
                      Que31Container(),
                      "lib/Container/Que31ContainerButton.dart",
                      "Clickable Button-Container,Gesterdetector,snackbar"),
                  ButtonsCode(
                      Que33Container(),
                      "lib/Container/Que33ContainerButton.dart",
                      "Clickable Button-Container,InkWell,snackbar"),
                  ButtonsCode(
                      Que43Dismis(),
                      "lib/ListView/Que43DismisItem.dart",
                      "Dismis Item from a List-List, Dismissible, SnackBar"),
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
