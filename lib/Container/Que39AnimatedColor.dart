// lib/Container/Que39AnimatedColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que39Animated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Color")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: AnimatedContainerDemo(),
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  final String url1 =
      "https://medium.com/flutter-community/flutter-animatedcontainer-widget-ede30bd98931";
  // state variables                           <-- state
  final _myDuration = Duration(seconds: 3);
  var _myValue = Color(0xFF00BB00);
  final _myNewValue = Color(0xFF0000FF);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child:

              // Update this code                  <-- AnimatedContainer
              AnimatedContainer(
            color: _myValue,
            duration: _myDuration,
            child: SomeOtherWidget(),
          ),
        ),
        updateStateButton()
      ],
    );
  }

  Align updateStateButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: ElevatedButton(
          child: Text('Update State'),
          onPressed: () {
            setState(() {
              if (_myValue == _myNewValue) {
                _myValue = Color(0xFF00BB00);
              } else {
                _myValue = Color(0xFF0000FF);
              }
            });
          },
        ),
      ),
    );
  }
}

class SomeOtherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
    );
  }
}
