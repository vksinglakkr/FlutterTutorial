// lib\Container\Que13MediaQuery.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1311 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que13.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text(' MediaQuery'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.red,
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}





//Note1 Tried many times to executed, succesffuly executed only when we have defined Stateless and Statefull widgets
