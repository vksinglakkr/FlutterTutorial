// lib/Box/Box_SizedBox/Que03.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que03Sized11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-sizedbox-widget-examples";

  final String video1 = "EHPu_DzRfqA"; //Flutter
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("SizedBox (Usage)")),
        body: Column(
          children: [
            Text(
              "And SizedBox simply creates a box with given width/height and doesn't allow child to go beyond given dimensions.",
              textAlign: TextAlign.center,
            ),
            Center(
              child: RandomContainer(
                child: SizedBox(
                  width: 200,
                  height: 90,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Increase width, Height of Elevated Button\n\nwidth: 200, height: 90",
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            ),
            Divider(
                thickness: 5,
                color: Colors.green,
                height: 5,
                indent: 20,
                endIndent: 20),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "width: double.infinity, \nheight:90",
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            ),
            Divider(
                thickness: 5,
                color: Colors.green,
                height: 5,
                indent: 20,
                endIndent: 20),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ElevatedButton 1",
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                    height: 50,
                    child: Text("Space adjustment between widgets\nheight:50",
                        textAlign: TextAlign.center)),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ElevatedButton 2",
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ],
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
