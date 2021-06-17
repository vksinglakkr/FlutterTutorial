// lib/Switch\Que07Switch.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0711 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0711> {
  bool isSwitched = false;
  final String url1 = "";
  final String image1 = "assets/help/Switch/Que07.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Switch")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Transform.scale(
                  scale: 2,
                  child: SizedBox(
                    width: 75,
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() => isSwitched = value);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
