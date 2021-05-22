import 'package:flutter/material.dart';

class Que34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView.builder without List declaration",
              style: TextStyle(fontSize: 16)),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return FlutterLogo(size: 120.0);
                },
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que34.png'),
              ),
            ),
            Center(child: Text("ListView/Que34WithoutListDeclaration.dart"))
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
