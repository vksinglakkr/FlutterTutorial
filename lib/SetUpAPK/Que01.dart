// lib\SetUpAPK\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/SetUpAPK/APK.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to create APK?'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Card(
              color: Colors.indigoAccent,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text(
                    'flutter build apk --build-name=1.0.1 --build-number=1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
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
