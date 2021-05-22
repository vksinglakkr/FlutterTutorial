import 'package:flutter/material.dart';

class Que12TextShape extends StatefulWidget {
  @override
  _Que12TextShapeState createState() => new _Que12TextShapeState();
}

class _Que12TextShapeState extends State<Que12TextShape> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => result as per Conditional Statement'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Divider(),
            Transform.scale(
                scale: 3,
                child: Text("Transform.scale(scale:2, child:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                    ))),
            SizedBox(height: 20),
            Transform.rotate(
                angle: 0.1,
                child: Text("Transform.rotate(angle:0.1, child:",
                    style: TextStyle(fontSize: 20))),
            SizedBox(height: 20),
            Container(
              height: 100.0,
              width: 300.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: new Text(
                      "Rounded Corner Rectangle Shape",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 150.0,
                width: 150.0,
                //     color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: new Center(
                      child: new Text(
                        "Rounded Corner Square Shape",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
