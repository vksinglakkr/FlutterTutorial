// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/pages/HomePending.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';

class HomeInteraction extends StatefulWidget {
  final Color primaryColor;
  const HomeInteraction({key, this.primaryColor});

  @override
  _HomeInteractionState createState() => _HomeInteractionState();
}

class _HomeInteractionState extends State<HomeInteraction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Interaction"),
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
                child: Text('Draggable',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
              child: Text('LongPressDraggable',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('GestureDetector',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
              child: Text('Inkwell',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('DragTarget',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('Dismissible',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('AbsorbPointer',
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
                child: Text('Hero',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('Navigator',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePending()));
                }),
            ElevatedButton(
                child: Text('IgnorePointer',
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
