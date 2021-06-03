// lib\pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:radio_button/Buttons/HomeScreen_Buttons.dart';
import 'package:radio_button/testdartFile/Que01.dart';
import '../AlertDialog/HomeScreen_Alert.dart';
import '../Align/HomeScreen_Align.dart';
import '../Assignments/HomeScreen_Assignments.dart';
import '../Bar/HomeScreen_Bar.dart';
import '../Box/HomeScreen_Box.dart';
import '../Card/HomeScreen_Card.dart';
import '../Container/HomeScreen_Container.dart';
import '../CustomWidgets/HomeScreen.dart';
import '../Divider/HomeScreen.dart';
import '../Drawer/HomeScreen.dart';
import '../GesterDetector/HomeScreen.dart';
import '../GridView/HomeScreen.dart';
import '../Icons/HomeScreen.dart';
import '../Image/HomeScreen_Image.dart';
import '../InkWell/HomeScreen.dart';
import '../ListView/HomeScreen_ListView1.dart';
import '../Material/HomeScreen.dart';
import '../Opacity/HomeScreen.dart';
import '../Padding/HomeScreen.dart';
import '../Placeholder/HomeScreen.dart';
import '../ProgressIndicator_Loading/HomeScreen.dart';
import '../QueURL_Launcher.dart';
import '../Row/HomeScreen.dart';
import '../Slider/HomeScreen.dart';
import '../Spacer/HomeScreen.dart';
//import '../Stack_IndexStack_Positioned/HomeScreen.dart';
import '../Switch/HomeScreen.dart';
import '../Tab/HomeScreen.dart';
import '../Text/HomeScreen.dart';
import '../TextField/HomeScreen.dart';
import '../Transform/HomeScreen.dart';
import '../Video_Player.dart';
import '../Visibility/HomeScreen.dart';
import '../YouTubePlayer.dart';
//import '../testdartFile/Que01.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - NIC Kurukshetra'),
        ),
        body: GridView.count(
//          padding: EdgeInsets.all(1),
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 3.0,
          children: [
            ElevatedButton(
                child: Text('AlertDialog', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlert(),
                    ))),
            ElevatedButton(
                child: Text('Align', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlign(),
                    ))),
            ElevatedButton(
                child: Text('Assignments', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAssignments(),
                    ))),
            ElevatedButton(
                child: Text('Bar', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBar(),
                    ))),
            ElevatedButton(
                child: Text('Box', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBox(),
                    ))),
            ElevatedButton(
                child: Text('Buttons', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeButton(),
                    ))),
            ElevatedButton(
                child: Text('Card', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeCard(),
                    ))),
            ElevatedButton(
                child: Text('Container', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeContainer(),
                    ))),
            ElevatedButton(
              child: Text('Custom Widgets', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeCustomWidget(),
                  )),
            ),
            ElevatedButton(
              child: Text('Divider', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDivider(),
                  )),
            ),
            ElevatedButton(
              child: Text('Drawer', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDrawer(),
                  )),
            ),
            ElevatedButton(
              child: Text('GesterDetector', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGesterDetector(),
                  )),
            ),
            ElevatedButton(
              child: Text('Grid View', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGridView(),
                  )),
            ),
            ElevatedButton(
              child: Text('Icons', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeIcons(),
                  )),
            ),
            ElevatedButton(
                child: Text('Image', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeImage(),
                    ))),
            ElevatedButton(
              child: Text('InkWell', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeInkWell(),
                  )),
            ),
            ElevatedButton(
                child: Text('ListView', style: TextStyle(fontSize: 14)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeListView1(),
                    ))),
            ElevatedButton(
              child: Text('Material', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeMaterial(),
                  )),
            ),
            ElevatedButton(
              child: Text('Opacity', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeOpacity(),
                  )),
            ),
            ElevatedButton(
              child: Text('Padding', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePadding(),
                  )),
            ),
            ElevatedButton(
              child: Text('Placeholder', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePlaceholder(),
                  )),
            ),
            ElevatedButton(
              child: Text('ProgressIndicator', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeProgress(),
                  )),
            ),
            ElevatedButton(
              child: Text('Row', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeRow(),
                  )),
            ),
            ElevatedButton(
              child: Text('Slider', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSlider(),
                  )),
            ),
            ElevatedButton(
              child: Text('Spacer', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSpacer(),
                  )),
            ),
            ElevatedButton(
              child: Text('Switch', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSwitch(),
                  )),
            ),
            ElevatedButton(
              child: Text('Tab', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTabBar(),
                  )),
            ),
            ElevatedButton(
              child: Text('Text', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeText(),
                  )),
            ),
            ElevatedButton(
              child: Text('TextField', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTextField(),
                  )),
            ),
            ElevatedButton(
              child: Text('Transform', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTransform(),
                  )),
            ),
            ElevatedButton(
              child: Text('Visibility', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeVisibility(),
                  )),
            ),
            ElevatedButton(
              child: Text('Video Player', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => VideoPlayerApp(),
                  )),
            ),
            ElevatedButton(
              child: Text('url Launcher', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyAppURL(),
                  )),
            ),
            ElevatedButton(
              child: Text('YouTube Player', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => QueYouTube(),
                  )),
            ),
            ElevatedButton(
              child: Text('Testdart', style: TextStyle(fontSize: 14)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Que01Test(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
