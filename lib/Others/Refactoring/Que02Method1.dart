import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

/*
  Refactoring with a Method- What does this mean?
  
  Every time the parent widget is redrawn, all 
  the methods will also redraw their widgets,
  the widgets tree is not optimizable for perrformance.
*/

class Que02Method1 extends StatelessWidget {
  Widget _buildContainer() {
    return Container(
      color: Colors.red,
      height: 200.0,
      width: 200.0,
    );
  }

  // Container _buildContainer() {
  //   return Container(
  //     color: Colors.yellow,
  //     height: 40.0,
  //     width: 40.0,
  //   );
  // }
  final String video1 = "Xu92WAlf0vI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refactoring with a Method'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: _buildContainer(), //use of Method
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
