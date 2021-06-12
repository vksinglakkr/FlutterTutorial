// lib\pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/CustomWidgets/HomeScreen.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
//import '../Stack_IndexStack_Positioned/HomeScreen.dart';import 'Assignments/HomeScreen_Assignments.dart';
import 'Assignments/HomeScreen_Assignments.dart';
import 'General/HomeScreen.dart';
import 'GesterDetector/HomeScreen.dart';
import 'InkWell/HomeScreen.dart';
import 'Material/HomeScreen.dart';
import 'Opacity/HomeScreen.dart';
import 'Placeholder/HomeScreen.dart';
import 'ProgressIndicator_Loading/HomeScreen.dart';
import 'QueURL_Launcher.dart';
import 'Spacer/HomeScreen.dart';
import 'Theme/HomeScreen.dart';
import 'Video_Player.dart';
import 'Visibility/HomeScreen.dart';
import 'YouTubePlayer.dart';
import 'testdartFile/Que01.dart';
//import '../testdartFile/Que01.dart';

class HomeScreenOthers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Others")),
        body: GridView.count(
          padding: EdgeInsets.all(5),
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 3.0,
          children: [
            ElevatedButton(
              child: Text('General',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGeneral(),
                  )),
            ),
            ElevatedButton(
              child: Text('Custom Widgets',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeCustomWidget(),
                  )),
            ),
            ElevatedButton(
              child: Text('GesterDetector',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGesterDetector(),
                  )),
            ),
            ElevatedButton(
              child: Text('InkWell',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeInkWell(),
                  )),
            ),
            ElevatedButton(
              child: Text('Material',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeMaterial(),
                  )),
            ),
            ElevatedButton(
              child: Text('Opacity',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeOpacity(),
                  )),
            ),
            ElevatedButton(
              child: Text('Placeholder',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePlaceholder(),
                  )),
            ),
            ElevatedButton(
              child: Text('Loader..',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeProgress(),
                  )),
            ),
            ElevatedButton(
              child: Text('Spacer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSpacer(),
                  )),
            ),
            ElevatedButton(
              child: Text('Visibility',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeVisibility(),
                  )),
            ),
            ElevatedButton(
              child: Text('Video Player',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => VideoPlayerApp(),
                  )),
            ),
            ElevatedButton(
              child: Text('url Launcher',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyAppURL(),
                  )),
            ),
            ElevatedButton(
              child: Text('YouTube Player',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => QueYouTube(),
                  )),
            ),
            ElevatedButton(
              child: Text('Testdart',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Que01Test(),
                  )),
            ),
            ElevatedButton(
                child: Text('Assignments',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAssignments(),
                    ))),
            ElevatedButton(
                child: Text('Theme',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeTheme(),
                    ))),
            ElevatedButton(
                child: Text('General',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeGeneral(),
                    ))),
          ],
        ),
      ),
    );
  }
}
