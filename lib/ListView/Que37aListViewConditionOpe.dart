// lib/ListView\Que37aListViewConditionOpe.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que37a11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que37a11> {
  List<String> names = [
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  final List<int> msgCount = [2, 0, 10, 6, 52, 4, 0, 2, 67];

  final String image1 = "assets/help/ListView/Que37a.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Conditional Operator if-else")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(children: <Widget>[
          Container(
              height: 350,
              child: ListView.builder(
                  padding: const EdgeInsets.all(5),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 38,
                      margin: EdgeInsets.all(2),
                      // color: msgCount[index] >= 10
                      //     ? Colors.blue[400]
                      //     : msgCount[index] > 3
                      //         ? Colors.blue[100]
                      //         : Colors.grey,
                      color: index % 2 == 0 ? Colors.yellow : Colors.red,
                      child: Center(
                          child: Text(
                        '${names[index]} (${msgCount[index]})',
                        style: TextStyle(fontSize: 16),
                      )),
                    );
                  })),
        ]),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
