// lib/Buttons/ElevatedButton/Que07CustomButton.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07Custom11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que07Custom11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que03.png";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Elevated Button \nusing Extract Widget'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: new Center(
        child: Column(
          children: [
            CustomElevated("Elevated Button \nUsing Extract Widget"),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

class CustomElevated extends StatelessWidget {
  final String textData;
  const CustomElevated(this.textData);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          side: BorderSide(
        width: 5,
        color: Colors.red,
      )),
      child: Text(this.textData),
    );
  }
}
