//  \lib/API/Step1_MakeHttpRequest\Que01Step1.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Step2Basic extends StatelessWidget {
  final String url1 = "";
  final String image1 = "";
  final String video1 =
      "apPH1CCOtKQ"; //timing 8:00 final conversion of API to JSON clearly expalined
  launchURL() {
    launch('https://app.quicktype.io/');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Convert API to JSON"),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ElevatedButton(
        onPressed: launchURL,
        child: Text("Convert API to JSON using https://app.quicktype.io/"),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
