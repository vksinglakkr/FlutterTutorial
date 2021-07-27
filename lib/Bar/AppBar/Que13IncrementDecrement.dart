import 'package:flutter/material.dart';

class Que13 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Add 1 to the `_counter`
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Remove 1 to the `_counter`
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Update the `leading` to have a better design
        leading: Icon(Icons.accessibility),
        // Change the app name
        title: Text("Flutter Calculator"),
        actions: <Widget>[
          // First button - decrement
          IconButton(
            icon: Icon(Icons.remove), // The "-" icon
            onPressed: _decrementCounter, // The `_decrementCounter` function
          ),

          // Second button - increment
          IconButton(
            icon: Icon(Icons.add), // The "+" icon
            onPressed: _incrementCounter, // The `_incrementCounter` function
          ), //IconButton
        ],
      ),
      body: Center(
        // Update the body with a Text widget
        // to display the counter value
        child: Text(
          '$_counter',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
