// lib\Box\Box_RotatedBox\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que01Fitted11 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "IYDVcriKjsw";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box=>Stretch Image'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Text(
              "Flutter code sample for FittedBox\nIn this example, the image is stretched to fill the entire [Container], which would\nnot happen normally without using FittedBox."),
          Container(
            height: 180,
            width: 250,
            color: Colors.red,
            child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ),
          Container(
            height: 180,
            width: 250,
            color: Colors.red,
            child: FittedBox(
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
