// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/CustomWidgets/HomeScreen.dart';
import 'package:flutter_tutorial/Others/FlutterLogo/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Future/HomeScreen.dart';
import 'package:flutter_tutorial/Others/PersistKey/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Positioned/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Properties/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Providers/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Routes/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Stack_IndexStack_Positioned/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Toast/HomeScreen.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Wrap/HomeScreen.dart';
import 'package:flutter_tutorial/Others/testdartFile/Que01.dart';
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
              child: Text('Widgets Communication',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HomeWidgetCommunication(),
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
              child: Text('Future',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFuture(),
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
                    builder: (BuildContext context) => QueTestMyApp(),
                  )),
            ),
            ElevatedButton(
              child: Text('Stack',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeStack(),
                  )),
            ),
            ElevatedButton(
              child: Text('Positioned',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePositioned(),
                  )),
            ),
            ElevatedButton(
                child: Text('Properties',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeProperties(),
                    ))),
            ElevatedButton(
                child: Text('Wrap',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeWrap(),
                    ))),
            ElevatedButton(
                child: Text('FlutterLogo',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeLogo(),
                    ))),
            ElevatedButton(
                child: Text('Routes',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeRoutes(),
                    ))),
            ElevatedButton(
                child: Text('Toast',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeToast(),
                    ))),
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
                child: Text('PersistKey',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePersist(),
                    ))),
            ElevatedButton(
                child: Text('Provider (State Management)',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeProvider(),
                    ))),
          ],
        ),
      ),
    );
  }
}
