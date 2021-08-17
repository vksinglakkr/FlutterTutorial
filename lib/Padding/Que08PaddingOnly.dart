// lib/Padding\Que08PaddingOnly.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0811 extends StatefulWidget {
  @override
  _Que0811State createState() => _Que0811State();
}

class _Que0811State extends State<Que0811> {
  final String image1 = "assets/help/Padding/Que08.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: WidgetAppBar("PaddingOnly")),
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
                      child: Text('Elevated Button'),
//                  padding: EdgeInsets.only(left: 50, right: 50),
                    )),
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button'),
//                  padding: EdgeInsets.only(top: 20),
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
