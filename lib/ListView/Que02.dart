import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder'),
      ),
      body: Column(
        children: [
          Text("Simple Text widget"),
          myWidget(),
          Text("ListTile"),
          myWidgetTile(),
        ],
      ),
    );
  }
}

Widget myWidget() {
  return RandomContainer(
    height: 200,
    child: ListView.builder(
      padding: EdgeInsets.all(8.0),
      // spacing of the rows
      itemExtent: 30.0,
      // provides an infinite list
      //itemCount: 10, // to get infinite list
      itemBuilder: (BuildContext context, int index) {
        return Text('Row $index');
      },
    ),
  );
}

Widget myWidgetTile() {
  return RandomContainer(
    height: 200,
    child: ListView.builder(
      padding: EdgeInsets.all(8.0),
      // spacing of the rows
      itemExtent: 30.0,
      // provides an infinite list
      //itemCount: 10, // to get infinite list
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Row $index'),
          onTap: () {
            // do something
          },
        );
      },
    ),
  );
}
