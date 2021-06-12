// lib\General\Que09StateFullWidget.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09MyHomePage011 extends StatefulWidget {
  @override
  _Que09MyHomePage011State createState() => _Que09MyHomePage011State();
}

class _Que09MyHomePage011State extends State<Que09MyHomePage011> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Material App Bar")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.blue,
              child: Text('Nic Kurukshetra'),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

//Fine Nic Kurukshetra will show on White Screen. Blue Background. Center Screen

