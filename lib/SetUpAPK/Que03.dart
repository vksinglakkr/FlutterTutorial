// lib\SetUpAPK\Que03.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Que0311 extends StatelessWidget {
  launchURL() {
    launch('https://flutteragency.com/change-the-project-name/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change \nof Project Name',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.black38,
            margin: EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.info),
                  color: Colors.black,
                  onPressed: launchURL,
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
