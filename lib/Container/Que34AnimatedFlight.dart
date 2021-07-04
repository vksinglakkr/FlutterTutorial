import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class FlightExample extends StatefulWidget {
  @override
  FlightExampleState createState() {
    return new FlightExampleState();
  }
}

class FlightExampleState extends State<FlightExample> {
  final String url1 =
      "https://medium.com/flutter-community/flutter-animated-series-animated-containers-52a5d52c0ad3";
  var _alignment = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Flight")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        alignment: _alignment,
        child: Icon(
          Icons.airplanemode_active,
          size: 60.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              if (_alignment == Alignment.topRight) {
                _alignment = Alignment.bottomLeft;
              } else {
                _alignment = Alignment.topRight;
              }
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
    );
  }
}
