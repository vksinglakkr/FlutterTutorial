// lib\Padding\HomeScreen.dart
import 'package:flutter/material.dart';
import 'Que01EdgeInsetsDirectional.dart';
import 'Que06usingPadding.dart';
import 'Que07PaddingLRTB.dart';
import 'Que08PaddingOnly.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('Padding'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que06()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('PaddingLRTB'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que07()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('PaddingOnly'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que08()));
                  }),
            ),
          ],
        ),
      ))),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class MyAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: MyAppEdgeInSets11(),
      sourceFilePath: 'lib/Padding/Que01EdgeInsetsDirectional.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que01EdgeInsetsDirectional.dart',
    );
  }
}

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0611(),
      sourceFilePath: 'lib/Padding/Que06usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que06usingPadding.dart',
    );
  }
}

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0711(),
      sourceFilePath: 'lib/Padding/Que07usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que07usingPadding.dart',
    );
  }
}

class Que08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0811(),
      sourceFilePath: 'lib/Padding/Que08usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que08usingPadding.dart',
    );
  }
}
