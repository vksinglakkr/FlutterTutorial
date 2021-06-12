// lib\ListView\Que10ListViewRadioButton.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1011 extends StatefulWidget {
  @override
  _Que1011State createState() => _Que1011State();
}

class _Que1011State extends State<Que1011> {
  var groupValue;
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que10.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Leading or Trailling Text")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: 180,
            child: ListView(
              children: [
                ListTile(
                  title: Text('List item 1'),
                  subtitle: Text('Subtitle Item 1'),
                  leading: Icon(Icons.label),
                  trailing: Radio(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      // Update value.
                    },
                  ),
                ),
                ListTile(
                  title: Text('List item 2'),
                  subtitle: Text('Subtitle item 2'),
                  leading: Icon(Icons.label),
                  trailing: Radio(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      // Update value.
                    },
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que10.png'),
            ),
          ),
          Center(child: Text("ListView/Que10ListViewRadioButton.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
