import 'package:flutter/material.dart';

class Que03GridViewbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder'),
      ),
      body: Center(
        child: Container(
          child: buildGridPageOne(),
        ),
      ),
    );
  }
}

Widget buildGridPageOne() => GridView.builder(
//    key: PageStorageKey<String>('pageTwo'), // Preserve scroll Position
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 40,
    itemBuilder: (context, index) => GridTile(
          child: Text(
            'Grid item ${index + 1}',
            style: TextStyle(fontSize: 24),
          ),
        ));
