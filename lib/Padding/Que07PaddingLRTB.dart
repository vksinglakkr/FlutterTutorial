// lib/Padding\Que07PaddingLRTB.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

void main() => runApp(Que0711());

class Que0711 extends StatefulWidget {
  @override
  _Que0711State createState() => _Que0711State();
}

class _Que0711State extends State<Que0711> {
  final String image1 = "assets/help/Padding/Que07.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: WidgetAppBar("PaddingLRTB")),
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
//                  padding: EdgeInsets.fromLTRB(5, 25, 50, 10),
                    )),
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button'),
//                  padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
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
