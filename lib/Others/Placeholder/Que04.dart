// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04 extends StatelessWidget {
  final String image1 = "assets/help/Placeholder/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("fallbackHeight: \nNo effect without Parent")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Column(
            children: [
              Spacer(flex: 1),
              Row(
                children: [
                  Text("Container(\nwidth: 100, \nheight: 100)"),
                  Container(
                    width: 100,
                    height: 100,
                    child: Placeholder(
                      fallbackHeight: 200.0,
                      fallbackWidth: 200.0,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                      "Placeholder(\nfallbackHeight: 200.0, \nfallbackWidth: 200.0,"),
                ],
              ),
              Spacer(flex: 1),
              UnconstrainedBox(
                child: Placeholder(
                  fallbackHeight: 50.0,
                  fallbackWidth: 50.0,
                  color: Colors.red,
                ),
              ),
              Spacer(flex: 1),
              SizedBox(
                height: 100,
                width: 100,
                child: Placeholder(
                  fallbackHeight: 50.0,
                  fallbackWidth: 50.0,
                  color: Colors.red,
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
