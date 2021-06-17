// lib/Switch\Que09Switch.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0911 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0911> {
  bool isSwitched = false;
  final String url1 = "";
  final String image1 = "assets/help/Switch/Que09.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("How to show text on Track")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Transform.scale(
                scale: 3,
                child: Switch.adaptive(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() => isSwitched = value);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("May be set its own as per Android or iOS")
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
