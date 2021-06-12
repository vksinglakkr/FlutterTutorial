// lib\Stack_IndexStack_Positioned\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';
//import 'Que01.dart';
//import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}

// class Que01 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WidgetWithCodeView(
//       child: Que0111(),
//       sourceFilePath: 'lib/Slider/Que01.dart',
//       codeLinkPrefix:
//           'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Slider/Que01.dart',
//     );
//   }
// }