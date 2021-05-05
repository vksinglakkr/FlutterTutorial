import 'package:flutter/material.dart';

class Que03ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image(image: AssetImage()) App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image(image: AssetImage()) Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
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
                  image: AssetImage('assets/images/Que01aImage.jpg'),
                ),
              ),
              Text("Image/Que03ListView.dart")
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
