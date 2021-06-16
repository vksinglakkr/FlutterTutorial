// lib\Bar\BottomBar\Que01Basic.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01ButtonBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01ButtonBar11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    //  _scaffoldKey.currentState.showSnackBar(SnackBar(
    //    content: Text(message),
    //   ));
  }
  final String url1 = "";
  final String image1 = "assets/help/Bar/Snackbar/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: WidgetAppBar("")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
            //textColor: Colors.white,
            //color: Colors.blue,
            child: Text('Show SnackBar'),
            onPressed: () {
              _showMessageInScaffold("Hello dear! I'm SnackBar.");
            },
          )),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
