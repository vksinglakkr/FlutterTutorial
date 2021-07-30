// lib/Bar\AppBar\Que06Popup.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06Popup11 extends StatefulWidget {
  @override
  _Que06Popup11State createState() => _Que06Popup11State();
}

class _Que06Popup11State extends State<Que06Popup11> {
  final String image1 = "assets/help/";

  String _selectedItem = 'Sun';
  List _options = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("3 Dot Popup Menu(List)"),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Selected Day: $_selectedItem",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(''' PopupMenuButton(
                  itemBuilder: (BuildContext bc) {
                  return _options
                  .map((day) => PopupMenuItem(
                  child: Text(day),
                  value: day,)).toList();
                  },
                  onSelected: (value) {
                  setState(() {
                  });}), ''',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
        // body: Center(
        //   child: Text("Selected Day: $_selectedItem"),
        // ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
