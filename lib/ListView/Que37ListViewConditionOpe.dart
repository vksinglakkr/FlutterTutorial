// lib\ListView\Que37ListViewConditionOpe.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que3711 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que3711> {
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
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que37.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: WidgetAppBar("Conditional Operator if..else if..else..")),
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
                    color: msgCount[index] >= 10
                        ? Colors.blue[400]
                        : msgCount[index] > 3
                            ? Colors.blue[100]
                            : Colors.grey,
//                    color: index % 2 == 0 ? Colors.yellow : Colors.red,
                    child: Center(
                        child: Text(
                      '${names[index]} (${msgCount[index]})',
                      style: TextStyle(fontSize: 16),
                    )),
                  );
                })),
        SizedBox(height: 5),
        Center(
          child: Image(
            image: AssetImage('assets/images/ListView/Que37.png'),
          ),
        ),
        Center(child: Text("ListView/Que37ListViewConditionOpe.dart"))
      ]),
      floatingActionButton: WidgetFab(),
    );
  }
}
