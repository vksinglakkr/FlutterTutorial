// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Bar/AppBar/HomeScreen_AppBar.dart';
import 'package:flutter_tutorial/Bar/BottomNavigationBar/HomeScreen_Bottom.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/HomeScreen_Elevated.dart';
import 'package:flutter_tutorial/Drawer/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Scaffold/HomeScreen.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/Tab/HomeScreen1.dart';
import 'package:flutter_tutorial/Text/HomeScreen.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/pages/HomePending.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';

class HomeNavigation extends StatefulWidget {
  final Color primaryColor;
  const HomeNavigation({key, this.primaryColor});

  @override
  _HomeNavigationState createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Navigation"),
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
                child: Text('Scaffold',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeScaffold(),
                    ))),
            ElevatedButton(
                child: Text('AppBar',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeAppBar()));
                }),
            ElevatedButton(
              child: Text('Bottom\nNavigationbar',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeBottom(),
                  )),
            ),
            ElevatedButton(
                child: Text('TabBar & TabBarView',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeTabBar1(),
                    ))),
            ElevatedButton(
              child: Text('MaterialApp',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('WidgetsApp',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
              child: Text('Drawer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDrawer(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
