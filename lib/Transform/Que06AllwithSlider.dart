// lib\Transform\Que06AllwithSlider.dart
import 'package:flutter/material.dart';
import '../pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0611 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rotate/Scale/3D/Skew/Translate Widgets',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Rotate/Scale/3D/Skew/Translate Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sliderVal = 0;
  Slider slider() {
    return Slider(
      value: sliderVal,
      min: 0,
      max: 100,
      onChanged: (val) {
        setState(() {
          sliderVal = val;
        });
      },
    );
  }

  Container rotateContainer() {
    return Container(
      child: Transform.rotate(
        angle: sliderVal,
        origin: Offset(0.0, 0.0),
        child: Container(height: 60.0, width: 60.0, color: Colors.purple),
      ),
    );
  }

  Container scaleContainer() {
    return Container(
      child: Transform.scale(
        scale: sliderVal <= 1 ? 0 : sliderVal / 50,
        origin: Offset(0.0, 0.0),
        child: Container(height: 40.0, width: 40.0, color: Colors.red),
      ),
    );
  }

  Container translateContainer() {
    return Container(
      child: Transform.translate(
        offset: Offset(sliderVal, 0.0),
        child: Container(height: 80.0, width: 80.0, color: Colors.yellow),
      ),
    );
  }

  Container skewContainer() {
    return Container(
      child: Transform(
        transform: Matrix4.skewX(sliderVal / 100),
        child: Container(height: 60.0, width: 60.0, color: Colors.blue),
      ),
    );
  }

  Container threeDContainer() {
    return Container(
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, sliderVal / 1000)
          ..rotateX(3.14 / 20.0),
        alignment: FractionalOffset.center,
        child: Container(height: 50.0, width: 50.0, color: Colors.black),
      ),
    );
  }

  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Transform/Que06.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar(widget.title)),

      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            slider(),
            rotateContainer(),
            scaleContainer(),
            translateContainer(),
            skewContainer(),
            threeDContainer(),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
