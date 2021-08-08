import 'package:flutter/material.dart';

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Example'),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/Kurukshetra.jpg"),
          backgroundColor: Colors.amber,
          radius: 120,
          child: Text('NIC',
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold)),
          foregroundColor: Colors.red,
//          minRadius: 50,
//          maxRadius: 160, If you alredy use radius, you are not allowed to use minRadius and/or maxRadius.
        ),
      ),
    );
  }
}
