// lib\Image\Clipping\Que10Clip.dart
import 'package:flutter/material.dart';
import '../BottomNavigationBar.dart';

class Que10Clip11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Clipping/Que09.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipPath Assignment3'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            child: Center(
              child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Image.network(
                      "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                      height: 200,
                      width: 300,
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/Que10aClip.jpg'),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/Que10bClip.jpg'),
            ),
          ),
          Text("Image/Clipping/Que10Clip.dart")
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

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 20;
    while (curXPos < size.width) {
      curXPos += increment;
      path.arcToPoint(Offset(curXPos, curYPos), radius: Radius.circular(5));
    }
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//Note:  https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html
