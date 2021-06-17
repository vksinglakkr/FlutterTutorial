// lib/TextField\Que08Controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class QueExpanded11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<QueExpanded11> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "rgIcf9YfSOs"; //final

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("Handle changes \nusing Controller?")),
        body: InkWell(
            onTap: () => launch("https://kurukshetra.gov.in"),
            child: Text("RetroPortal Studio")),
      ),
    );
  }
}
