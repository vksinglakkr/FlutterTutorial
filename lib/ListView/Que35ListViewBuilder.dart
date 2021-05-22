import 'package:flutter/material.dart';

class Que35 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder without List declaration',
              style: TextStyle(
                fontSize: 16,
              )),
        ),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  child: Text("Item $index"),
                  padding: EdgeInsets.only(
                      left: 20.0, right: 8.0, top: 3.0, bottom: 3.0),
                );
              },
            ),
            SizedBox(height: 5),
            Center(child: Text("shrinkWrap: true must be set for this.")),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que35.png'),
              ),
            ),
            SizedBox(height: 5),
            Center(child: Text("ListView/Que35ListViewBuilder.dart"))
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
