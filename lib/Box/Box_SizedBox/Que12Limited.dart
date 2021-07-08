// lib/Box/Box_SizedBox/Que12Limited.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que12 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-sizedbox-widget-examples";

  final String video1 = "aVZ5rsA4Yx8"; //Flutter
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("FractionallySizedBox \nOverflowBox")),
        body: Column(
//          shrinkWrap: true,
//          physics: NeverScrollableScrollPhysics(),
          children: [
            //              Spacer(flex: 1),
            //FractionalSizedBox
            Text(
              "FractionallySizedBox (heightFactor, widthFactor)",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Text(
              "Note: Parent is must.",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Text(
              "Note: No effect of Size of Child. Only set as per Parent.",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: RandomContainer(
                    height: 80,
                    width: 80,
                    child: FractionallySizedBox(
                      heightFactor: 0.5,
                      widthFactor: 0.5,
                      child: FlutterLogo(size: 60),
                    ),
                  ),
                ),
                Center(
                  child: RandomContainer(
                    height: 80,
                    width: 80,
                    child: FractionallySizedBox(
                      heightFactor: 0.8,
                      widthFactor: 0.8,
                      child: FlutterLogo(size: 60),
                    ),
                  ),
                ),
                Center(
                  child: RandomContainer(
                    height: 80,
                    width: 80,
                    child: FractionallySizedBox(
                      heightFactor: 0.3,
                      widthFactor: 0.3,
                      child: FlutterLogo(size: 60),
                    ),
                  ),
                ),
                Center(
                  child: RandomContainer(
                    height: 80,
                    width: 80,
                    child: FractionallySizedBox(
                      heightFactor: 0.5,
                      widthFactor: 0.5,
                      child: FlutterLogo(size: 180),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text("Container:80, \nBox:0.5, Logo:60",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
                Center(
                  child: Text("Container:80, \nBox:0.8, Logo:60",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
                Center(
                  child: Text("Container:80, \nBox:0.3, Logo:60",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
                Center(
                  child: Text("Container:80, \nBox:0.5, Logo:180",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
              ],
            ),

//              Spacer(flex: 1),
            //OverflowBox
            Divider(
                thickness: 5,
                color: Colors.green,
                height: 5,
                indent: 20,
                endIndent: 20),
            //            Spacer(flex: 1),
            Text(
              "OverflowBox (maxHeight, minHeight, maxWidth, minWidth)",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Text(
              "Note: Parent is must.",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Text(
              "Note: Show child only if Size of Child > Box.",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Text(
              "Note: Height of child max as set by Box.",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Text(
              "Note: Size of Box will be as per Parent.",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: RandomContainer(
                    height: 100,
                    width: 100,
                    child: OverflowBox(
                      maxHeight: 80,
                      maxWidth: 80,
                      child: FlutterLogo(size: 60),
                    ),
                  ),
                ),
                Center(
                  child: RandomContainer(
                    height: 100,
                    width: 100,
                    child: OverflowBox(
                      maxHeight: 180,
                      maxWidth: 180,
                      child: FlutterLogo(size: 180),
                    ),
                  ),
                ),
                Center(
                  child: RandomContainer(
                    height: 30,
                    width: 30,
                    child: OverflowBox(
                      maxHeight: 80,
                      maxWidth: 80,
                      child: FlutterLogo(size: 80),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text("Container:100, \nBox:80, Logo:60",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
                Center(
                  child: Text("Container:100, \nBox:180, Logo:180",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
                Center(
                  child: Text("Container:30, \nBox:80, child:80",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                ),
              ],
            ),
            Spacer(flex: 1),
          ],
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
