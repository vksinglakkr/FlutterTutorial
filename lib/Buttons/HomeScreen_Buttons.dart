// lib\Buttons\RadioButton\HomeScreen_Radio.dart
import 'package:flutter/material.dart';
import 'package:radio_button/Buttons/IconicButtons/HomeScreen_Iconic.dart';
import 'ElevatedButton/HomeScreen_Elevated.dart';
import 'FlatButton/HomeScreen_Flat.dart';
import 'FloatingActionButton/HomeScreen_Floating.dart';
import 'RadioButton/HomeScreen_Radio.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
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
                      child: Text('Elevated Button',
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
                      child: Text('Flat Button',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeFlat()));
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
