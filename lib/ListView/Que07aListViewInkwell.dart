// lib/ListView\Que07ListViewContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0711a extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que07.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("InkWell ListView")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.all(Radius.zero),
              onTap: () => showAlert(context, "You Pressed Inkwell"),
              child: Text(
                "Press Me ",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
