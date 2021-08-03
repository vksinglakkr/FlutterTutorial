// lib/TextField\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/TextField/Assignment1.dart';
import 'package:flutter_tutorial/TextField/Assignment2.dart';
import 'package:flutter_tutorial/TextField/Assignment3.dart';
import 'package:flutter_tutorial/TextField/Assignment4.dart';
import 'package:flutter_tutorial/TextField/Assignment6.dart';
import 'package:flutter_tutorial/TextField/Assignment5.dart';
import 'package:flutter_tutorial/TextField/Assignment7.dart';
import 'package:flutter_tutorial/TextField/BasicNotes.dart';
import 'package:flutter_tutorial/TextField/Que01atextAlign.dart';
import 'package:flutter_tutorial/TextField/Que01bMaxlengthmaxLines.dart';
import 'package:flutter_tutorial/TextField/Que01cSingleTextField.dart';
import 'package:flutter_tutorial/TextField/Que01dBorder.dart';
import 'package:flutter_tutorial/TextField/Que01ePrefix.dart';
import 'package:flutter_tutorial/TextField/Que01fCursor.dart';
import 'package:flutter_tutorial/TextField/Que01gTextCapitalisation.dart';
import 'package:flutter_tutorial/TextField/Que03TextFieldTheme.dart';
import 'package:flutter_tutorial/TextField/Que04keyBoard.dart';
import 'package:flutter_tutorial/TextField/Que05InputFormatter.dart';
import 'package:flutter_tutorial/TextField/Que05InputFormatter2.dart';
import 'package:flutter_tutorial/TextField/Que06FocusNode.dart';
import 'package:flutter_tutorial/TextField/Que07onChanged.dart';
import 'package:flutter_tutorial/TextField/Que08Controller.dart';
import 'package:flutter_tutorial/TextField/Que09.dart';
import 'package:flutter_tutorial/TextField/Que10.dart';
import 'package:flutter_tutorial/TextField/Que11.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01SimpleTextField.dart';
import 'Que02UsernamePassword.dart';

class HomeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("TextField")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que0111(),
                      "lib/TextField/Que01SimpleTextField.dart",
                      "textField, hintText, labelText, helperText",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01a11(),
                      "lib/TextField/Que01atextAlign.dart",
                      "AutoFocus, textAlign, Password",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01b11(),
                      "lib/TextField/Que01bMaxlengthmaxLines.dart",
                      "Max. Length/Lines",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01f11(),
                      "lib/TextField/Que01fCursor.dart",
                      "cursorColor, cursorWidth, height of Cursor",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01g11(),
                      "lib/TextField/Que01gTextCapitalisation.dart",
                      "Capitalisation of Sentence, Characters, Words",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01c11(),
                      "lib/TextField/Que01cSingleTextField.dart",
                      "disabled, readonly, padding",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01d11(),
                      "lib/TextField/Que01dBorder.dart",
                      "Borders: Focused/error/disabled..",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05Input(),
                      "lib/TextField/Que05InputFormatter.dart",
                      "Input Formatter",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05Input2(),
                      "lib/TextField/Que05InputFormatter2.dart",
                      "Pattern Input Formatter",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Text11(),
                      "lib/TextField/Que03TextFieldTheme.dart",
                      "set Border properties using Theme",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01e11(),
                      "lib/TextField/Que01ePrefix.dart",
                      "prefixIcon, prefixText, prefix",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04Keyboard(),
                      "lib/TextField/Que04keyBoard.dart",
                      "keyBoard",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0211(),
                      "lib/TextField/Que02UsernamePassword.dart",
                      "Login Page - Username & Password",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06FocusNode11(),
                      "lib/TextField/Que06FocusNode.dart",
                      "How to set Focus using FocusNode?",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07onChanged11(),
                      "lib/TextField/Que07onChanged.dart",
                      "Handle changes using onChanged?",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08Controller11(),
                      "lib/TextField/Que08Controller.dart",
                      "Handle changes using Controller?",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01BasicNotes(),
                      "lib/TextField/BasicNotes.dart",
                      "Basic Notes",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09(),
                      "lib/TextField/Que09.dart",
                      "Retrieve Text Input",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que10(),
                      "lib/TextField/Que10.dart",
                      "Retrieve Text Input",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11(),
                      "lib/TextField/Que11.dart",
                      "Focus text fields-FocusNode,FAB",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01Assignment(),
                      "lib/TextField/Assignment1.dart",
                      "Assignment - Login form?",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Assignment(),
                      "lib/TextField/Assignment2.dart",
                      "Assignment - Send values to Next Screen?",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Assignment(),
                      "lib/TextField/Assignment3.dart",
                      "Show value-TextField/Controller/toast/AlertDialog",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04Assignment(),
                      "lib/TextField/Assignment4.dart",
                      "onSubmitted,onTap,OnEditingComplete",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05Assignment(),
                      "lib/TextField/Assignment5.dart",
                      "retrival of value using onChanged",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06Assignment(),
                      "lib/TextField/Assignment6.dart",
                      "retrival of value using Controller/ElevatedButton(onPress..)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07Assignment(),
                      "lib/TextField/Assignment7.dart",
                      "Hide/Show Password",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
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
