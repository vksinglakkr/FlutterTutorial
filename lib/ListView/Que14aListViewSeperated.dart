// lib\ListView\Que14aListViewSeperated.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que14a11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que14a11> {
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
  final String image1 = "assets/help/ListView/Que14a.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("ListView.separated")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 30,
                margin: EdgeInsets.all(2),
                color: Colors.blue[colorCodes[index]],
                child: Center(
                  child: Text(
                    '${names[index]}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              thickness: 5,
              color: Colors.red,
            ),
          )),
          SizedBox(
            height: 2.0,
          ),
          //  Center(
          //    child: Image(
          //      image: AssetImage('assets/images/ListView/Que07.png'),
          //    ),
          //  ),
          Center(child: Text("ListView/Que14aListViewSeperated.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
