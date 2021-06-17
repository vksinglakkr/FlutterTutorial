//  lib/Container\Que99AnimatedOpacity.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que9911 extends StatefulWidget {
  @override
  _Que9911State createState() => _Que9911State();
}

class _Que9911State extends State<Que9911> {
  bool _visible = false;
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que99.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Opacity")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _visible ? 1.0 : 0.2,
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
                child: Text('Animated Opacity',
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
