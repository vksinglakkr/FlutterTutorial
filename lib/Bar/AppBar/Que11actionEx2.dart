import "package:flutter/material.dart";

class Que11ActionEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
              icon: Icon(Icons.more_vert,),
              onPressed: () {
              },
          )
        ],
      ),
      body:Container()
    );
  }
}
