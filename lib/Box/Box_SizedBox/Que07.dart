// lib/Box/Box_SizedBox/Que07.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("SizedBox.shrink")),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Card(
                    color: Colors.orange,
                    child: Text(
                      "Simple SizedBox. Size increase or decrease as per the Text.",
                      textAlign: TextAlign.center,
                    )),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 40.0,
                  maxHeight: 60.0,
                  maxWidth: 200.0,
                  minWidth: 100.0,
                ),
                child: SizedBox(
                  child: Card(
                      color: Colors.orange,
                      child: Text(
                          "Simple SizedBox with constraints keeps the size within limits. ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12))),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 60.0,
                  minWidth: 150.0,
                ),
                child: SizedBox.shrink(
                  child: Card(
                      color: Colors.orange,
                      child: Text(
                          "SizedBox.shrink with Constraints shrink the text to minimum value",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12))),
                ),
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



//Note: First show without width, Height and Size
//Note: Show with size: 200
//Note: Remove size enter Height:200, width:200
//Note: If we have entered width, height and Size What We get Ans It will see only width & height. Ignore Size
