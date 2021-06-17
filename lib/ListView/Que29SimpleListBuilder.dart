// lib/ListView\Que29SimpleListBuilder.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2911 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que2911> {
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

  final String url1 = "";
  final String image1 = "assets/help/ListView/Que29.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("ListView Builder - 1 List")),
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
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        '${names[index]}',
                        style: TextStyle(fontSize: 18),
                      )),
                    );
                  }))
        ]),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
