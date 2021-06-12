// lib\Buttons\RadioButton\Que01RadioButton.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Radio11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Radio Button Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bulbColor = Colors.black;
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/RadioButton/Que00.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline,
              size: 100,
              color: bulbColor,
            ),
            Container(
              width: 150,
              child: Row(
                children: [
                  Radio(
                      value: Colors.red,
                      groupValue: bulbColor,
                      onChanged: (val) {
                        bulbColor = val;
                        setState(() {});
                      }),
                  Text(
                    "Red",
                    style: TextStyle(fontSize: 24, color: Colors.red),
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              child: Row(
                children: [
                  Radio(
                      value: Colors.blue,
                      groupValue: bulbColor,
                      onChanged: (val) {
                        bulbColor = val;
                        setState(() {});
                      }),
                  Text(
                    "Blue",
                    style: TextStyle(fontSize: 24, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              child: Row(
                children: [
                  Radio(
                      value: Colors.green,
                      groupValue: bulbColor,
                      onChanged: (val) {
                        bulbColor = val;
                        setState(() {});
                      }),
                  Text(
                    "Green",
                    style: TextStyle(fontSize: 24, color: Colors.green),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
