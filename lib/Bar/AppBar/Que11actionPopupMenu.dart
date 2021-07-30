import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que11Popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar Title"), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.file_upload),
          onPressed: () => {showAlert(context, "File upload icon Pressed")},
        ),
        IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => {showAlert(context, "Setting icon Pressed")}),
        PopupMenuButton(
          icon: Icon(Icons.share),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text("Facebook"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Instagram"),
            ),
          ],
        )
      ]),
      body: Center(
          child: Text(
        'Flutter AppBar Tutorial',
      )),
    );
  }
}
