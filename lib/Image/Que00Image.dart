// lib\Image\Que00Image.dart
import 'package:flutter/material.dart';
import '../pages/BottomNavigationBar.dart';

class Que00Image11 extends StatefulWidget {
  @override
  _Que00Image11State createState() => _Que00Image11State();
}

class _Que00Image11State extends State<Que00Image11> {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Que01.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text('Various ways \nfor obtaining an Image?'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          SizedBox(height: 5.0),
          Image(
            image: AssetImage('assets/images/ImageGenNotes.jpg'),
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/images/Que01Image.jpg'),
          ),
          Text(
            "Several constructors are provided for the various ways that an image can be specified:",
            style: TextStyle(
              fontSize: 10,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            "new Image, for obtaining an image from an ImageProvider.",
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.left,
          ),
          Text(
            "new Image.asset, for obtaining an image from an AssetBundle using a key.",
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.left,
          ),
          Text("new Image.network, for obtaining an image from a URL.",
              style: TextStyle(fontSize: 10)),
          Text("new Image.file, for obtaining an image from a File.",
              style: TextStyle(fontSize: 10)),
          Text("new Image.memory, for obtaining an image from a Uint8List.",
              style: TextStyle(fontSize: 10)),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

//flutter:
//  assets:
//    - assets/     // Name of folder may be any not necessarily assets
//
//  assets:
//    - assets/tablet.png    //No comma, No semicolon, No apostrophe
