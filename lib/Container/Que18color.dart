// lib\Container\Que18color.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que1811 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que18.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color '),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.red,
              //color: Colors.red.shade400,
              //color: Colors.blue[300],
              //color: Colors.red.withAlpha(80),
              //color: Color(0xFFB78093),
              //colors: [Color(0xFFF58174c),Color(0xFFF2055c)] in case of Gradient
              //colors: Colors.red.withOpacity(0.1)
              //using ARGB (Alpha Red Green Blue)
              //color: Color.fromARGB(255, 255, 0, 0),
              //using RGBO (Red Green Blue Opacity)
              //color: Color.fromRGBO(0, 155, 0, 0.8),
              //color: msgCount[index] >= 10 ? Colors.blue[400] : msgCount[index] > 3 ? Colors.blue[100] : Colors.grey,
              // color: Colors.transparent, //for example see text widget
              child: Text('NIC Kurukshetra'),
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

//Note: Also see fillcolor in textField,
//Note: Also see textColor in Buttons
