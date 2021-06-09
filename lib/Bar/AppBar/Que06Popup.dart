// lib\Bar\AppBar\Que06Popup.dart
import 'package:flutter/material.dart';

class Que06Popup11 extends StatefulWidget {
  @override
  _Que06Popup11State createState() => _Que06Popup11State();
}

class _Que06Popup11State extends State<Que06Popup11> {
  String _selectedItem = 'Sun';
  List _options = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3 Dot Popup Menu(List)"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) {
              return _options
                  .map((day) => PopupMenuItem(
                        child: Text(day),
                        value: day,
                      ))
                  .toList();
            },
            onSelected: (value) {
              setState(() {
                _selectedItem = value;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Selected Day: $_selectedItem"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
