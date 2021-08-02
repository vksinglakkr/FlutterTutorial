// lib/SetUpAPK/Que06.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06 extends StatelessWidget {
  final String url1 =
      "https://medium.com/flutter-community/flutter-visual-studio-code-shortcuts-for-fast-and-efficient-development-7235bc6c3b7d";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Shortcut Keys")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "You can directly go to any line number by using Ctrl+g and typing the line number."),
              Text(
                  "You can cut a line by using Ctrl+x or copy the line using Ctrl+c when the cursor is at any point on the line and then you can use Ctrl+v to paste the same"),
              Text("select any word by double clicking the left mouse button"),
              Text(
                  "select the whole line by clicking the left mouse button 3 times"),
              Text("rename any widget by pressing F2"),
              Text("Switch files/tabs     Ctrl+Tab"),
              Text("Easily trace your steps    Alt + → or Alt + ←"),
              Text("Finding the bracket pair    Ctrl+Shift+\\"),
              Text(
                  "Expand/Shrink Selection — Select between Brackets    Shift+Alt+→   Shift+Alt+←"),
              Text("Move a line or a selection up or down    Alt+↑ or Alt+↓"),
              Text(
                  "Shift+Alt+↑ or Shift+Alt+↓ to copy a line/selection of lines up or down."),
              Text("m                 MaterialApp"),
              Text("stanim            statefulwidget with initState & dispose"),
              Text("statefulW"),
              Text("statelessW"),
              Text("dis               void dispose() { "),
              Text(
                  "afun              returnType functionName(List args) async {return Null;}"),
              Text("build             Widget build(BuildContext context) {}"),
              Text("cle               inherited class"),
              Text("dconst            const type variableName = ;"),
              Text("dfinal            final type variableName = ;"),
              Text("dconvert          import 'dart:convert';"),
              Text(
                  "importC           import 'package:flutter/cupertino.dart';"),
              Text("importM"),
              Text("debugP            debugPrint(statement);"),
              Text("dlist             List<dynamic> listName"),
              Text("dmap              Map<dynamic, dynamic> mapName;"),
              Text("do                do while loop"),
              Text("fcent             Center(child:   )"),
              Text("fcol              Column(children: []"),
              Text("fcont             Container(child:  )"),
              Text("fed               EdgeInsets...."),
              Text("fex               Expanded(child: ...)"),
              Text("fic               Icon(Icons.clear)"),
              Text("fin               for ( var var_name in arry_var){}"),
              Text("frow              Row(children: []"),
              Text("fscaff            Scaffold(appbar: body:)"),
              Text("fszb              SizedBox(width: 0.0, height: 0.0)"),
              Text("ftxt              Text('text')"),
              Text("futureBldr"),
              Text("for"),
              Text("for in"),
              Text("gridViewB"),
              Text("gridViewC"),
              Text("gridViewE"),
              Text("i1e"),
              Text("i2e"),
              Text("i3e"),
              Text("ie"),
              Text("if"),
              Text("initS            void initState() {"),
              Text("listViewB"),
              Text("listViewS"),
              Text("switch case"),
              Text("tc               try catch"),
              Text("ternary          () ? :"),
              Text("toc              try catch"),
              Text("tocf             try catch"),
              Text("while"),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
