// lib/Text\Que04IncreaseFontSize.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04Text11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04Text11> {
  final String image1 = "assets/help/Text/Que04.png";

  double custFontSize = 12;

  void changeFontSize() {
    setState(() {
      custFontSize += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text=>fontSize Property")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(children: <Widget>[
              Text(
                'TextStyle(fontSize: custFontSize)',
                style: TextStyle(fontSize: custFontSize),
              ),
              ElevatedButton(
                onPressed: () {
                  changeFontSize();
                },
                child: Text('Change size'),
              ),
            ])),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
