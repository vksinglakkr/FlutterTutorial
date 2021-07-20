// lib/Box\HomeScreen_Sized.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/CheckBox/HomeScreen_check.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Box_DecoratedBox/HomeScreen_Decorated.dart';
import 'Box_RotatedBox/HomeScreen_Rotated.dart';
import 'Box_FittedBox/HomeScreen_Fitted.dart';
import 'Box_SizedBox/HomeScreen_Sized.dart';

class HomeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Box")),
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
                        child: Text(
                            'SizedBox,FractionallySizedBox,OverflowBox..',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeSized()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Decorated Box',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeDecorated()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Fitted Box',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeFitted()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Rotated Box',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeRotated()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Check Box',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeCheck()));
                        }),
                  ),
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
