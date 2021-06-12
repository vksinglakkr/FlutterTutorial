// lib\Bar\Snackbar\Que04Action.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04SnackBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04SnackBar11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    try {
//      _scaffoldKey.currentState.showSnackBar(SnackBar(
//        content: Text(message),
//        action: SnackBarAction(
//          label: 'Undo',
//          onPressed: () {
//            // some code
//            print('Action in Snackbar has been pressed.');
//          },
//        ),
//      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  final String url1 = "";
  final String image1 = "assets/help/Bar/Snackbar/Que04.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: WidgetAppBar("Back Ground Color")),
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
      floatingActionButton: WidgetFab(),
    );
  }
}
