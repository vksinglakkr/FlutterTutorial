// lib/Box/Box_SizedBox/Que05.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05 extends StatelessWidget {
  final String url1 = "";

  final String video1 = "aVZ5rsA4Yx8"; //mtechviral best for SizedBox
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("SizedBox.fromSize")),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox.fromSize(
                size: MediaQuery.of(context).size / 2,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "size: MediaQuery.of(context).size / 2",
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
