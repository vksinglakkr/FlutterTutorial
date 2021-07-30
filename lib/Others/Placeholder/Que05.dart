// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05 extends StatelessWidget {
  final String image1 = "assets/help/Placeholder/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Multiple Placeholder")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Placeholder(
                    fallbackHeight: 50.0,
                    fallbackWidth: 50.0,
                    strokeWidth: 5,
                    color: Colors.red,
                  ),
                  Placeholder(
                    fallbackHeight: 50.0,
                    fallbackWidth: 50.0,
                    strokeWidth: 5,
                    color: Colors.red,
                  ),
                  Placeholder(
                    fallbackHeight: 50.0,
                    fallbackWidth: 50.0,
                    strokeWidth: 5,
                    color: Colors.red,
                  ),
                  Placeholder(
                    fallbackHeight: 50.0,
                    fallbackWidth: 50.0,
                    strokeWidth: 5,
                    color: Colors.red,
                  ),
                  Placeholder(
                    fallbackHeight: 50.0,
                    fallbackWidth: 50.0,
                    strokeWidth: 5,
                    color: Colors.red,
                  ),
                ],
              ),
              Spacer(flex: 1),
              Container(
                height: 250,
                child: Placeholder(
                  strokeWidth: 5,
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
