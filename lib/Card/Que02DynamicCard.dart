// lib/Card\Que01CardContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Generate Card using \nList<String>');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url1 =
      "https://medium.com/@willbeh/flutter-daily-wrap-instead-of-row-widget-a525bfa29e08";
  final List<String> tags = [
    'Food',
    'Chicken',
    'Chilly',
    'Egg',
    'Pizza',
    'Burger',
    'Vegetables',
    'Protein'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(widget.title)),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Wrap(
            children: tags.map((element) {
              return Card(
                child: Text('$element'),
              );
            }).toList(),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
