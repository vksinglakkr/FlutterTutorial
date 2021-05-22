import 'package:flutter/material.dart';

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                height: 50,
                color: Colors.amber[600],
                child: Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: Center(child: Text('Entry C')),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/images/ListView/Que06.jpg'),
                ),
              ),
              Center(child: Text("ListView/Que06ListViewBasic.dart"))
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
      ),
    );
  }
}
