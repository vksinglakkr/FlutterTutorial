//  \lib/API/Step1_MakeHttpRequest\Que01Step1.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Step1Basic extends StatelessWidget {
  final String url1 = "";
  final String image1 = "";
  final String video1 = ""; //final for Que01 4 Steps clearly expalined
  launchURL() {
    launch('https://reqres.in/');
  }

  launchURL1() {
    launch('http://makeup-api.herokuapp.com/');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("make an HTTP Request"),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: launchURL,
            child: Text("A hosted REST-API ready to use"),
          ),
          ElevatedButton(
            onPressed: launchURL1,
            child: Text("Makeup API"),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
