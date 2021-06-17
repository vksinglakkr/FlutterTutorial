// lib/Container\Que12WidthHeightConstraints.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1211 extends StatelessWidget {
  final random = Random();
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que12.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Width, Height Constraints ")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.red,
              //   width: 200.0,
              height: 200.0,
              //media query
              //width: double.infinity,
              //width: MediaQuery.of(context).size, //error
              //Random Number
              //width: random.nextInt(200).toDouble(),
              //constraints: BoxConstraints.expand(height: 100, width: 150),
              //constraints: BoxConstraints.expand(width: 150),
              //constraints: BoxConstraints.expand(),
              //constraints: BoxConstraints.tightForFinite(width:200.0),
              //constraints: BoxConstraints(
              //     maxHeight: 200.0,
              //     minHeight: 50.0,
              //     maxWidth: 200.0,
              //     minWidth: 100.0),
              //alignment: Alignment.topLeft,
              child: Center(
                  child: Text("NIC Kurukshetra",
                      style: TextStyle(fontSize: 30.0))),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

//Note 1: if we wrap Text in Center widget and we have not used width, height & constraints we get the max values.
//Note 2: if we used alignment we get the max values.
//Note 3: if we set width and also set min width in constraints, then it will take width value set outside constraints.
//Note 4: What will happen if we set .expand and Alignmnet.center, width & height i.e. all 4 things. Ans Full screen.
