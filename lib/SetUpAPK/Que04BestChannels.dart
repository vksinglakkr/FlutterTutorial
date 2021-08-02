// lib/SetUpAPK/Que04BestChannels.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0411 extends StatelessWidget {
  final String url1 = "https://flutteragency.com/change-the-project-name/";
  final String image1 = "assets/help/SetUpAPK/APK.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Change \nof Project Name")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Text("The Growing Developer"),
            Text("FlutterToday"),
            Text("Smarthead"),
            Text("https://kodestat.gitbook.io/flutter/"),
            Text("https://bezkoder.com/category/flutter/"),
            Text("Desi programmer"),
            Text("https://www.geeksforgeeks.org/flutter-tutorial/"),
            Text("Mohit Aggarwal i checked Textfield"),
            Text("https://github.com/nisrulz/flutter-examples"),
            Text("CodeX i checked Textfield"),
            Text("https://flutter-tutorial.com/"),
            Text("Programming Addict"), //checked for Display data from a Josn
            Text("RetroPortal Studio"),
            Text("flutter25.com"),
            Text("Paul Halliday"),
            Text("flutterShapemaker.com"),
            Text("LearnFlutterwithme"),
            Text("Abubakar Shaikh i checked for Future builder"),
            Text(
                "theItalianDev i checked HTTP Request. May also check for firebase"),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
