// lib/Bar\Snackbar\Que01Basic.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class Que01SnackBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01SnackBar11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final String image1 = "assets/help/Bar/Snackbar/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: WidgetAppBar("Don't Close on tap outside")),
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
                // Fluttertoast.showToast(
                //     msg: "The entered text is: NIC, Kurukshetra",
                //     toastLength: Toast.LENGTH_SHORT,
                //     gravity: ToastGravity.BOTTOM,
                //     //   timeInSecForIosWeb: 1,
                //     backgroundColor: Colors.black,
                //     textColor: Colors.white,
                //     fontSize: 16.0);
              },
            )),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
