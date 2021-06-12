// lib\General\Que07return_Scaffold_Container.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

void main() => runApp(Que07MyApp011());

class Que07MyApp011 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Material App Bar")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text('Hello World', textDirection: TextDirection.ltr),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

//error, No Output

