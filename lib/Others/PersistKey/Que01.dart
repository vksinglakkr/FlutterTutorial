import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Que01Persist extends StatefulWidget {
  @override
  Que01PersistState createState() {
    return Que01PersistState();
  }
}

class Que01PersistState extends State<Que01Persist> {
  var nameOfApp = "Persist Key Value";

  var counter = 0;

  // define a key to use later
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0);
    });
  }

  _onIncrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) + 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  _onDecrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) - 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text(nameOfApp),
      ),
      // Body
      body: Container(
        // Center the content
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$counter',
                textScaleFactor: 10.0,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                  onPressed: _onIncrementHit, child: Text('Increment Counter')),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                  onPressed: _onDecrementHit, child: Text('Decrement Counter')),
            ],
          ),
        ),
      ),
    );
  }
}
