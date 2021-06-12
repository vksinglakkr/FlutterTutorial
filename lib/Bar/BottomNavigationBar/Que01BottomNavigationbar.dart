//lib\Bar\BottomNavigationBar\Que01BottomNavigationbar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Que01Bottom11 extends StatefulWidget {
  @override
  _Que01Bottom11State createState() => _Que01Bottom11State();
}

class _Que01Bottom11State extends State<Que01Bottom11> {
  int _selectedIndex = 0;
  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Bottom Navigation Bar")),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //type: BottomNavigationBarType.shifting,
          iconSize: 50,
          selectedFontSize: 30,
          unselectedFontSize: 16,

          backgroundColor: Colors.brown,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.image),
              label: 'Image',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.play_arrow),
              label: 'Video',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            setState(
              () {
                _selectedIndex = index;
                if (_selectedIndex == 0) {
                  launch(
                      'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
                } else if (_selectedIndex == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAppImage()));
                } else if (_selectedIndex == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAppVideo()));
                }
              },
            );
          },
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      body: Container(child: Image.asset("assets/help/Bar/AppBar/Que02.png")),
      floatingActionButton: WidgetFab(),
    );
  }
}
