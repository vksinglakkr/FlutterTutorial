import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class TextOpacitySimple extends StatefulWidget {
  @override
  TextOpacitySimpleState createState() {
    return new TextOpacitySimpleState();
  }
}

class TextOpacitySimpleState extends State<TextOpacitySimple> {
  @override
  void initState() {
    super.initState();
  }

  final String url1 =
      "https://medium.com/flutter-community/flutter-animated-series-animated-opacity-c11137883a8d";
  var _opacity = 0.0;
  var _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Opacity")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _opacity = _opacity == 0.0 ? 1.0 : 0.0;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            width: _width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueGrey,
            ),
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: Text(
                '#NicKurukshetra',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
