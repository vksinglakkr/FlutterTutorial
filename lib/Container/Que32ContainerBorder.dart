// lib\Container\Que32ContainerBorder.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que3211 extends StatefulWidget {
  @override
  _Que3211State createState() => _Que3211State();
}

class _Que3211State extends State<Que3211> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que32.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Border'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border.all(
                    color: Colors.green,
                    width: 5,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border(
                      left: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ))),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border(
                      top: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ))),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border(
                      right: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ))),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ))),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.green,
                        width: 5,
                      ),
                      right: BorderSide(
                        color: Colors.red,
                        width: 10,
                      ))),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border(
                      left: BorderSide(
                        color: Colors.green,
                        width: 5,
                      ),
                      top: BorderSide(
                        color: Colors.indigo,
                        width: 7,
                      ),
                      right: BorderSide(
                        color: Colors.black45,
                        width: 5,
                      ),
                      bottom: BorderSide(
                        color: Colors.orange,
                        width: 20,
                      ))),
            ),
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
      ),
    );
  }
}
