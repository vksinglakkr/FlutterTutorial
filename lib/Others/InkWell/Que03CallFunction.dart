// lib\InkWell\Que02ClickonTextToggle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Que03InkWell11 extends StatefulWidget {
  @override
  _Que03InkWell11State createState() => _Que03InkWell11State();
}

class _Que03InkWell11State extends State<Que03InkWell11> {
  String name1 = "NIC Kurukshetra";
  final String url1 = "";
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("InkWell\nCall fn onTap")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: InkWell(
            onTap: () => launch("https://kurukshetra.gov.in"),
            child: Text("District Kurukshetra<-Click here")),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
