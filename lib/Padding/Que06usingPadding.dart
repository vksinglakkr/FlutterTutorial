// lib/Padding\Que06usingPadding.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0611 extends StatefulWidget {
  @override
  _Que0611State createState() => _Que0611State();
}

class _Que0611State extends State<Que0611> {
  final String url1 = "";
  final String image1 = "assets/help/Padding/Que06.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: WidgetAppBar("Padding")),
          bottomNavigationBar:
              QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
          body: Column(
            children: [
              Center(
                  child: Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button - Default Padding'),
                    )),
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button - Padding 25'),
//                  padding: EdgeInsets.all(25),
                    )),
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button - Padding 50'),
//                  padding: EdgeInsets.all(50),
                    )),
              ])),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purple.shade300,
            tooltip: "Go Back",
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.first_page),
          )),
    );
  }
}
