// lib\Buttons\ElevatedButton\Que02Snackbar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que02Elevated11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02Elevated11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
//    _scaffoldKey.currentState.showSnackBar(SnackBar(
//      content: Text(message),
//    ));
  }
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que02.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Elevated - Snackbar'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
//          textColor: Colors.white,
//          color: Colors.blue,
            child: Text('Show SnackBar'),
            onPressed: () {
              _showMessageInScaffold("Hello dear! I'm SnackBar.");
            },
          )),
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
