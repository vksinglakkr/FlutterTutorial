// lib\Text\Que01Overflow.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01over extends StatelessWidget {
  final String url1 =
      "https://nicksnettravels.builttoroam.com/flutter-text-widget/";
  final String image1 = "assets/help/Text/Que01overFlow.png";
  final String video1 = "9z_YNlRlWfA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Text => overflow")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: ListView(children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
                "Text within Container without any properties. Text within Container without any properties."),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            height: 28,
            child: Text(
              "Text within Container, height set lesser than required. Text without any properties. Clip beacuse of Height.",
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            height: 30,
            child: Text(
              "Fade->Using TextOverflow.fade in conjunction with a fixed height on the parent Container ",
              overflow: TextOverflow.fade,
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            height: 50,
            child: Text(
              "Clip->Text within Container, height greater than required for text but maxLines set to 3. Text without any properties. Text within Container, height greater than required for text but maxLines set to 2",
              overflow: TextOverflow.clip,
              maxLines: 3,
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            height: 25,
            child: Text(
              "ellipsis-> disable wrapping, regardless of space available",
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            height: 50,
            child: Text(
              "ellipsis-> ellipsis will disable wrapping of text if maxlines not mentioned. But is MaxLines are mentioned it will wrap the text after the specified number of Lines, regardles of space available.",
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            height: 25,
            child: Text(
              "visible-> shows the whole text, regardless of space available",
              overflow: TextOverflow.visible,
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Expanded-> Text with in Row will show overflow message. But if we wrap text in Expanded it will shortout the issue. maxLines will work as usual.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Row(
            children: [
              SizedBox(
                width: 350,
                child: Text(
                  "SizedBox-> Text with in Row will show overflow message. But if we wrap text in SizedBox it will shortout the issue. maxLines will work as usual.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Row(
            children: [
              Flexible(
                child: Text(
                  "Flexible-> Text with in Row will show overflow message. But if we wrap text in Flexible it will shortout the issue. maxLines will work as usual.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ]),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
