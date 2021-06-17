// lib/DART\Que01ConditionOperator.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01> {
  final String url1 = "";
  final String image1 = "assets/help/Dart/Que01.png";
  final String video1 = "";

  List names = [
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  List msgCount = [2, 0, 10, 6, 52, 4, 0, 2, 67];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("ListView Builder")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(children: <Widget>[
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),
                    color: msgCount[index] >= 10
                        ? Colors.blue[400]
                        : msgCount[index] > 3
                            ? Colors.blue[100]
                            : Colors.grey,
                    child: Center(
                        child: Text(
                      '${names[index]} (${msgCount[index]})',
                      style: TextStyle(fontSize: 18),
                    )),
                  );
                }))
      ]),
      floatingActionButton: WidgetFab(),
    );
  }
}
