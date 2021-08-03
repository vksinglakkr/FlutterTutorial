//     ..\lib/AlertDialog\HomeScreen_Alert.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/AlertDialog/Que10Simple.dart';
import 'package:flutter_tutorial/AlertDialog/Que20DatePicker.dart';
import 'package:flutter_tutorial/AlertDialog/Que30TimePicker.dart';
import 'package:flutter_tutorial/AlertDialog/Que40DateRange.dart';
import 'package:flutter_tutorial/Diagram/PageShowImage.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/TextField/Assignment3.dart';
import 'Que01Basic.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Dialog Box"),
          actions: [
            PopupMenuButton(
                itemBuilder: (BuildContext varPrefer) => [
                      PopupMenuItem(
                          child: IconButton(
                              icon: const Icon(Icons.settings),
                              color: Colors.black,
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MainTheme(),
                                  ))))
                    ])
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  Row(
                    children: [
                      Text("Alert Dialog Box",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageShowImage(
                                      text1: "Alert Dialog Box:",
                                      image1:
                                          "assets/help/AlertDialog/Alert.jpg"),
                                ));
                          },
                          child: Icon(Icons.info)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MyAppVideo(video1: "JDDoN2THwug"),
                                ));
                          },
                          child: Icon(Icons.play_arrow)),
                    ],
                  ),
                  ButtonsCode(
                      Que01Alert11(),
                      "lib/AlertDialog/Que01Basic.dart",
                      "Basic Example",
                      "assets/help/AlertDialog/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Assignment(),
                      "lib/TextField/Assignment3.dart",
                      "Show value-TextField/Controller/toast/AlertDialog",
                      "assets/help/AlertDialog/Que01.jpg",
                      "SubTitle"),
                  Row(
                    children: [
                      Text("Simple Dialog Box",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageShowImage(
                                      text1: "Simple Dialog Box:",
                                      image1:
                                          "assets/help/AlertDialog/Que20DatePicker.jpg"),
                                ));
                          },
                          child: Icon(Icons.info)),
                    ],
                  ),
                  ButtonsCode(Que10Simple(), "lib/AlertDialog/Que10Simple.dart",
                      "Simple Dialog Box", "assets/help/Que01.jpg", "SubTitle"),
                  Text("DatePicker Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que20DatePicker(),
                      "lib/AlertDialog/Que20DatePicker.dart",
                      "DatePicker Dialog Box",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Row(
                    children: [
                      Text("TimePicker Dialog Box",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageShowImage(
                                      text1: "TimePicker Dialog Box:",
                                      image1:
                                          "assets/help/AlertDialog/Que30TimePicker.jpg"),
                                ));
                          },
                          child: Icon(Icons.info)),
                    ],
                  ),
                  ButtonsCode(
                      Que30TimePicker(),
                      "lib/AlertDialog/Que30TimePicker.dart",
                      "TimePicker Dialog Box",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Row(
                    children: [
                      Text("Date Range Picker Dialog Box",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageShowImage(
                                      text1: "Date Range Picker Dialog Box:",
                                      image1:
                                          "assets/help/AlertDialog/Que40DateRange.jpg"),
                                ));
                          },
                          child: Icon(Icons.info)),
                    ],
                  ),
                  ButtonsCode(
                      Que40DateRangePicker(),
                      "lib/AlertDialog/Que40DateRange.dart",
                      "DateRangePicker Dialog Box",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Row(
                    children: [
                      Text("ColorPicker Dialog Box",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
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
