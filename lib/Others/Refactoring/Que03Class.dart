import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

/*
  Refactoring with a Method- What does this mean?
  
  Every time the parent widget is redrawn, all 
  the widget class will not redraw. They are built only once, 
  which is great for performance optimization.
*/

class Que03Class extends StatelessWidget {
  final String video1 = "Xu92WAlf0vI";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refactoring with a Widget Class'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: const ContainerClass(), //use of Widget Class
        // if we don't write the const it will initialize every time rebuid
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

class ContainerClass extends StatelessWidget {
  const ContainerClass({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      color: Colors.red,
    );
  }
}
