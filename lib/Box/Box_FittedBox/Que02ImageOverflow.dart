// lib\Box\Box_FittedBox\Que02ImageOverflow.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que02ImageOverflow11 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "IYDVcriKjsw";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tackle \nImage Overflow',
          style: TextStyle(fontSize: 16),
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        children: [
          Text("Sample Widget to understand how the FittedBox works"),
//          FittedBox(child:
          Container(
            color: Colors.red,
            child: Row(
              children: [
                Container(
                  child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                ),
                Container(
                  child: Text(
                      "Flutter code sample for FittedBox\nIn this example, the image is overflowed. Which handled easily by using FittedBox."),
                ),
              ],
            ),
          ),
//          ),  //Fitted Box
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
