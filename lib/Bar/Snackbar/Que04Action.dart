import 'package:flutter/material.dart';

class Que04SnackBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04SnackBar> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Flutter Tutorial - NIC KKR'),
        ),
        body: Center(
            child: ElevatedButton(
//          textColor: Colors.white,
//          color: Colors.blue,
          child: Text('Show SnackBar'),
          onPressed: () {
            _showMessageInScaffold("Hello dear! I'm SnackBar.");
          },
        )));
  }
}
