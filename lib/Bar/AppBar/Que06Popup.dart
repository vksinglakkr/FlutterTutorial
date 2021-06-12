// lib\Bar\AppBar\Que06Popup.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que06Popup11 extends StatefulWidget {
  @override
  _Que06Popup11State createState() => _Que06Popup11State();
}

class _Que06Popup11State extends State<Que06Popup11> {
  final String url1 = "";
  final String image1 = "assets/help/";
  final String video1 = "";
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
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Text("Selected Day: $_selectedItem"),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
