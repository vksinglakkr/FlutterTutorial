// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/pages/HomePending.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';

class HomeDialog extends StatefulWidget {
  final Color primaryColor;
  const HomeDialog({key, this.primaryColor});

  @override
  _HomeDialogState createState() => _HomeDialogState();
}

class _HomeDialogState extends State<HomeDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Dialog"),
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
                child: Text('Simple Dialog',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
              child: Text('Alert Dialog',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('Bottom Sheet',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePending(),
                    ))),
            ElevatedButton(
              child: Text('Expansion Panel',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
                child: Text('Snack Bar',
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
