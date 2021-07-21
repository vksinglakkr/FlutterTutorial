// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Bar/AppBar/HomeScreen_AppBar.dart';
import 'package:flutter_tutorial/Bar/ButtonBar/HomeScreen_ButtonBar.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/HomeScreen_Elevated.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/HomeScreen_Flat.dart';
import 'package:flutter_tutorial/Buttons/FloatingActionButton/HomeScreen_Floating.dart';
import 'package:flutter_tutorial/Buttons/IconicButtons/HomeScreen_Iconic.dart';
import 'package:flutter_tutorial/Buttons/RadioButton/HomeScreen_Radio.dart';
import 'package:flutter_tutorial/Dropdown/HomeScreen_Dropdown.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';

class HomeButton extends StatefulWidget {
  final Color primaryColor;
  const HomeButton({key, this.primaryColor});

  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Buttons"),
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
                child: Text('Elevated Button (Raised)',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeElevated(),
                    ))),
            ElevatedButton(
              child: Text('FloatingAction Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFloating(),
                  )),
            ),
            ElevatedButton(
                child: Text('Text Button (Flat)',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeFlat(),
                    ))),
            ElevatedButton(
              child: Text('Icon Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeIconic(),
                  )),
            ),
            ElevatedButton(
                child: Text('Dropdown Button)',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeDropdown()));
                }),
            ElevatedButton(
              child: Text('PopupMenu Button',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeAppBar(),
                  )),
            ),
            ElevatedButton(
                child: Text('Radio Button',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeRadio()));
                }),
            ElevatedButton(
                child: Text('Buttonbar',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeButtonBar()));
                }),
          ],
        ),
      ),
    );
  }
}
