import 'package:flutter/material.dart';

class Que32 extends StatefulWidget {
  @override
  _Que32State createState() => _Que32State();
}

class _Que32State extends State<Que32> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial - NIC KKR'),
          ),
          body: Center(
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
          ]))),
    );
  }
}
