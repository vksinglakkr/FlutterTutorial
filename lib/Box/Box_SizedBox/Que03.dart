import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03Sized11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-sizedbox-widget-examples";

  final String video1 = "EHPu_DzRfqA"; //Flutter
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar(
                "SizedBox, SizedBox.expand, SizedBox.shrink, SizedBox.fromSize")),
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
