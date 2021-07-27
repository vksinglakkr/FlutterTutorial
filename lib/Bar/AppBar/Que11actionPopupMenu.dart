import 'package:flutter/material.dart';

class Que11Popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
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
          onPressed: () => {print("Click on upload button")},
        ),
        IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => {print("Click on settings button")}),
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
