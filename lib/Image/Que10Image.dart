// lib\Image\Que10Image.dart
//Image using Container
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que10Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que10.png";
  final String video1 = "JDDoN2THwug";

  final urlImage1 = 'assets/images/Kurukshetra.jpg';
  final urlImage2 = 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Container(decoration..")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff7c94b6),
                image: DecorationImage(
                    image: NetworkImage(urlImage2), fit: BoxFit.cover),
                border: Border.all(color: Colors.black, width: 8),
                borderRadius: BorderRadius.circular(12),
              )),
          SizedBox(
            height: 100.0,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/Que10Image.jpg'),
            ),
          ),
          Text("Image/Que10Image.dart")
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
