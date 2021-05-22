import 'package:flutter/material.dart';

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Demo'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 5),
                height: 50,
                color: Colors.purple[600],
                child: const Center(
                    child: Text('Item 1',
                        style: TextStyle(fontSize: 18, color: Colors.white)))),
            Container(
                margin: EdgeInsets.only(top: 5),
                height: 50,
                color: Colors.purple[500],
                child: const Center(
                    child: Text('Item 2',
                        style: TextStyle(fontSize: 18, color: Colors.white)))),
            Container(
                margin: EdgeInsets.only(top: 5),
                height: 50,
                color: Colors.purple[400],
                child: const Center(
                    child: Text('Item 3',
                        style: TextStyle(fontSize: 18, color: Colors.white)))),
            Container(
                margin: EdgeInsets.only(top: 5),
                height: 50,
                color: Colors.purple[300],
                child: const Center(
                    child: Text('Item 4',
                        style: TextStyle(fontSize: 18, color: Colors.white)))),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que07.png'),
              ),
            ),
            Center(child: Text("ListView/Que07ListViewContainer.dart"))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
