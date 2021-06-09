// lib\Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';

import 'AppBar/HomeScreen_AppBar.dart';
import 'BottomNavigationBar/HomeScreen_Bottom.dart';
import 'ButtonBar/HomeScreen_ButtonBar.dart';
import 'Navigationbar/HomeScreen_Navigation.dart';
import 'Snackbar/HomeScreen_Snack.dart';

class HomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar'),
      ),
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
                      child: Text('AppBar',
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
                      child: Text('Bottom Navigation Bar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeBottom()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Navigation Bar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeNavigation()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Snack Bar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeSnack()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Button Bar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeButtonBar()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
