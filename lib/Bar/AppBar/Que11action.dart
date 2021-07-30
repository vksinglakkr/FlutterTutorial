import "package:flutter/material.dart";

class Que11ActionEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("actions: Ex.1"),
        actions: [
          Icon(Icons.comment),
          Icon(Icons.settings),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.amber,
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      '''appBar: AppBar(title: Text("actions:  ... "),   actions: [ Icon(Icons.comment), Icon(Icons.settings)])''',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
