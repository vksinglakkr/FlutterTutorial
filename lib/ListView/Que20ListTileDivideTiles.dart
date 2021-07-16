// lib/ListView\Que20ListTileDivideTiles.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2011 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile.divideTiles Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ListTile.divideTiles Demo'),
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
  final String image1 = "assets/help/ListView/Que20.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(widget.title)),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(
          children: ListTile.divideTiles(
            tiles: [
              ListTile(
                title: Text("Cow"),
              ),
              ListTile(
                title: Text("Dog"),
              ),
              ListTile(
                title: Text("Goat"),
              ),
            ],
            context: context,
            color: Colors.green,
          ).toList(),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
