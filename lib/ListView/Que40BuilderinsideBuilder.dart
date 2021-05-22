import 'package:flutter/material.dart';

class Que40 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder inside ListView.builder',
              style: TextStyle(
                fontSize: 16,
              )),
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int blockIdx) {
            return Column(
              children: [
                Text("Block $blockIdx"),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int childIdx) {
                    return Text("Child $childIdx");
                  },
                ),
              ],
            );
          },
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
