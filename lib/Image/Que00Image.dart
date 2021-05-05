import 'package:flutter/material.dart';

class Que00Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Notes App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Notes'),
        ),
        body: Column(
          children: [
            SizedBox(height: 10.0),
            Text("Asset, Network, File, Memory - Johannes Milke"),
            SizedBox(height: 5.0),
            Text("Image( Constructor, image: Loader, AssetImage('') Provider",
                style: TextStyle(fontSize: 12)),
            SizedBox(height: 5.0),
            Image(
              image: AssetImage('assets/images/ImageGenNotes.jpg'),
            ),
            SizedBox(height: 10),
            Image(
              image: AssetImage('assets/images/Que01Image.jpg'),
            ),
            Text("Image/Que00Image.dart"),
            SizedBox(height: 10.0),
            Text(
                "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html"),
            SizedBox(height: 5.0),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}

//flutter:
//  assets:
//    - assets/     // Name of folder may be any not necessarily assets
//
//  assets:
//    - assets/tablet.png    //No comma, No semicolon, No apostrophe
