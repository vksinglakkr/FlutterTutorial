import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Ba1'),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: 30,
          itemBuilder: (BuildContext context, int childIdx) {
            //          print("Building block $blockIdx child $childIdx");
            print("Building child $childIdx");
            return Padding(
              child: Text("Child $childIdx"),
              padding: EdgeInsets.only(
                  left: 20.0, right: 8.0, top: 8.0, bottom: 8.0),
            );
          },
        ),
      ),
    );
  }
}
