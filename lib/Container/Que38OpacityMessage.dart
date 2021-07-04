import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class ButtonOpacity extends StatefulWidget {
  @override
  ButtonOpacityState createState() {
    return new ButtonOpacityState();
  }
}

class ButtonOpacityState extends State<ButtonOpacity> {
  bool _isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animate Opacity")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: InkWell(
        onTap: () {
          setState(() {
            _isAdded = !_isAdded;
          });
        },
        child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 350),
            curve: Curves.linear,
            decoration: BoxDecoration(
              color: _isAdded ? Colors.transparent : Colors.blue,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3.0, color: Colors.blue),
            ),
            width: _isAdded ? 160 : 60,
            height: 60,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      opacity: _isAdded ? 0.0 : 1.0,
                      child: Icon(Icons.person_add, color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 550),
                    opacity: _isAdded ? 1.0 : 0.0,
                    child: Text(
                      "MESSAGE",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
