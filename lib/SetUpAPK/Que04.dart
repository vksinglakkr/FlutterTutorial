// lib/SetUpAPK/Que04.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar(
                "How to add INTERNET permission AndroidManifest.xml?")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Text(
                "In the AndroidManifest.xml file located at android/app/src/main , you need to add this permission inside the manifest tag."),
            Text(
                "<uses-permission android:name='android.permission.INTERNET'/>"),
            Image(image: AssetImage('assets/help/SetUpAPK/INTERNETSetting.jpg'))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
