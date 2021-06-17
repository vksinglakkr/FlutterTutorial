// lib/ListView\Que30aBuilderListView.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que30a11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que30a11> {
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
  final List<int> colorCodes = [100, 200, 300, 400, 500, 600, 700, 800];
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que30a.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("ListView Builder - 2 List")),
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
                    color: Colors.blue[colorCodes[index]],
                    child: Center(
                        child: Text(
                      '${names[index]}',
                      style: TextStyle(fontSize: 18),
                    )),
                  );
                })),
        Center(child: Text("ListView/Que30aBuilderListView.dart")),
      ]),
      floatingActionButton: WidgetFab(),
    );
  }
}
