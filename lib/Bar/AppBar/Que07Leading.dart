import "package:flutter/material.dart";

class Que07LeadingEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon in Leading"),
        leading: Icon(Icons.menu),
        //leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                '''leading: Icon(Icons.menu)''',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
