// lib/Container\Que97CustomContainer2.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que9711 extends StatefulWidget {
  @override
  _Que9711State createState() => _Que9711State();
}

class _Que9711State extends State<Que9711> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que97.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Custom Container 2")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
              color1: Colors.deepOrange,
              color2: Colors.yellow,
              containerNumber: '1',
              containerHeight: 300.0,
            ),
            CustomContainer(
              color1: Colors.blue,
              color2: Colors.red,
              containerNumber: '2',
              containerHeight: 300.0,
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String containerNumber;
  final double containerHeight;
  CustomContainer(
      {this.color1, this.color2, this.containerHeight, this.containerNumber});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      height: containerHeight,
      color: color1,
      child: Container(
        color: color2,
        child: Center(
          child: Text(
            "Container $containerNumber",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
