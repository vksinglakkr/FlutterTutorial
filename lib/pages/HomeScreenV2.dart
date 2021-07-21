// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Theme/HomeScreen.dart';
//import 'package:flutter_tutorial/Buttons/HomeScreen_Buttons.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/pages/HomePending.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeAnimation.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeAssets.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeAsync.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeBaseWidgets.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeButton.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeInformation.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeInput.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeInteraction.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeLayoutMulti.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeLayoutSingle.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeNavigation.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomePainting.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeScrolling.dart';
import 'package:flutter_tutorial/pages/HomeScreensV2/HomeStyle.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';
import '../Bar/HomeScreen_Bar.dart';
import '../Box/HomeScreen_Box.dart';
import '../Transform/HomeScreen.dart';
import '../SetUpAPK/HomeScreenSetUp.dart';
import 'BottomNavigationBar.dart';

class HomeScreenV2 extends StatefulWidget {
  final Color primaryColor;
  const HomeScreenV2({key, this.primaryColor});

  @override
  _HomeScreenV2State createState() => _HomeScreenV2State();
}

class _HomeScreenV2State extends State<HomeScreenV2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Flutter Tutorials"),
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
                                  )))),
                      PopupMenuItem(
                          child: IconButton(
                        icon: const Icon(Icons.exit_to_app),
                        color: Colors.black,
                        onPressed: () => showExitPopup(context),
                      )),
                    ])
          ],
        ),
        body: GridView.count(
          padding: EdgeInsets.all(6),
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 4.1,
          children: [
            ElevatedButton(
                child: Text('Base Widgets',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBaseWidgets(),
                    ))),
            ElevatedButton(
              child: Text('Setup/App Dev.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSetUp(),
                  )),
            ),
            ElevatedButton(
                child: Text('Animation',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAnimation(),
                    ))),
            ElevatedButton(
                child: Text('Assets',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAssets(),
                    ))),
            ElevatedButton(
                child: Text('Async',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAsync(),
                    ))),
            ElevatedButton(
                child: Text('Accessibility',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
                child: Text('Box',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBox(),
                    ))),
            ElevatedButton(
                child: Text('Bar',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBar(),
                    ))),
            ElevatedButton(
                child: Text('Buttons',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeButton(),
                    ))),
            ElevatedButton(
                child: Text('Gradient',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
                child: Text('Information',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeInformation(),
                    ))),
            ElevatedButton(
                child: Text('Input & Selection',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeInput(),
                    ))),
            ElevatedButton(
                child: Text('Interaction',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeInteraction(),
                    ))),
            ElevatedButton(
                child: Text('Layout-Single child',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeLayoutSingle(),
                    ))),
            ElevatedButton(
                child: Text('Layout-Multi child',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeLayoutMulti(),
                    ))),
            ElevatedButton(
                child: Text('Navigation',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeNavigation(),
                    ))),
            ElevatedButton(
                child: Text('Painting & Effect',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePainting(),
                    ))),
            ElevatedButton(
                child: Text('Scrolling',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeScrolling(),
                    ))),
            ElevatedButton(
                child: Text('Style',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeStyle(),
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
                child: Text('Transform',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeTransform(),
                    ))),
          ],
        ),
      ),
    );
  }
}
