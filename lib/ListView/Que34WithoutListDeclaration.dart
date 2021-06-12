// lib\ListView\Que34WithoutListDeclaration.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que3411 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que34.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder without List declaration",
            style: TextStyle(fontSize: 16)),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return FlutterLogo(size: 120.0);
              },
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que34.png'),
            ),
          ),
          Center(child: Text("ListView/Que34WithoutListDeclaration.dart"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
