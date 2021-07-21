// lib/Buttons\RadioButton\HomeScreen_Radio.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Bar/AppBar/HomeScreen_AppBar.dart';
import 'package:flutter_tutorial/Bar/ButtonBar/HomeScreen_ButtonBar.dart';
import 'package:flutter_tutorial/Dropdown/HomeScreen_Dropdown.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'ElevatedButton/HomeScreen_Elevated.dart';
import 'FlatButton/HomeScreen_Flat.dart';
import 'FloatingActionButton/HomeScreen_Floating.dart';
import 'IconicButtons/HomeScreen_Iconic.dart';
import 'RadioButton/HomeScreen_Radio.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Buttons")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Elevated Button (Raised)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeElevated()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Radio Button',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeRadio()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Floating Action Button',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeFloating()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Iconic Buttons',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeIconic()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Text Button (Flat)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeFlat()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Popup Menu Button (3 Dot)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeAppBar()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Button Bar',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeButtonBar()));
                        }),
                  ),
                  ElevatedButton(
                      child: Text('DropdownButton',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomeDropdown(),
                          ))),
                  ElevatedButton(
                      child: Text('Buttonbar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeButtonBar()));
                      }),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
