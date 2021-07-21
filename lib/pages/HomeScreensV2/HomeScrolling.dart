// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/pages/HomePending.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';

class HomeScrolling extends StatefulWidget {
  final Color primaryColor;
  const HomeScrolling({key, this.primaryColor});

  @override
  _HomeScrollingState createState() => _HomeScrollingState();
}

class _HomeScrollingState extends State<HomeScrolling> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Scrolling"),
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
                child: Text('GridView',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
              child: Text('ListView',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('NestedScrollView',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
              child: Text('SingleChildScrollView',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('CustomScrollview',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('NotificationListener',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('ScrollConfiguration',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('Scrollable',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('PageView',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('Scrollable',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('RefreshIndicator',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
          ],
        ),
      ),
    );
  }
}
