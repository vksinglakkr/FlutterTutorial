import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal ListView"),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
            height: 160.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                  child: Center(
                    child: Text("Item 1"),
                  ),
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Item 2"),
                  ),
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                  child: Center(
                    child: Text("Item 3"),
                  ),
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Item 4"),
                  ),
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                  child: Center(
                    child: Text("Item 5"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
