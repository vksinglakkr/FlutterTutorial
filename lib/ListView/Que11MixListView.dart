// lib/ListView\Que11MixListView.dart
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1111 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que11.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text/Container/Card.. - ListView")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200,
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Text',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.purple[500],
                    child: const Center(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Container',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ))),
                  ),
                  Card(
                    color: Colors.green,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Card',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(child: Text("ListView/Que11MixListView.dart"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
