// lib/Text\Que01aProperties.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01aText11 extends StatelessWidget {
  final String image1 = "assets/help/Text/Que01a.png";

//final String '$$'; semanticsLabel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text => Properties")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(children: <Widget>[
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "textScaleFactor: 1.1 //if you wanted the text to be 110% of it’s normal size then you’d set your textScaleFactor to 1.5 .",
                textScaleFactor: 1.2,
              )),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "SoftWrap: It is used to determine whether or not to show all text widget content when there is not enough space available. If it is true, it will show all content. Otherwise, it will not show all content.",
                // softWrap: ,
              )),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "TextWidthBasis: It is used to control how the text width is defined.",
                // textWidthBasis: ,
              )),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "TextHeightBehavior: It is used to control how the paragraph appears between the first line and descent of the last line.",
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                //  textHeightBehavior: TextHeightBehavior(applyHeightToLastDescent: false),
              )),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        ]),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
