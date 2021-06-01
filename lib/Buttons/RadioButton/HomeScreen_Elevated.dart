import 'package:flutter/material.dart';
import '../ElevatedButton/Que01AllProperties.dart';
import '../ElevatedButton/Que02Snackbar.dart';
import '../ElevatedButton/Que03onPressed.dart';
import '../ElevatedButton/Que04LongPress.dart';
import '../ElevatedButton/Que05FontSize.dart';
import '../ElevatedButton/Que06usingPadding.dart';
import '../ElevatedButton/Que07PaddingLRTB.dart';
import '../ElevatedButton/Que08PaddingOnly.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeElevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated '),
      ),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated-All Properties'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - Snackbar'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - onPressed',
                          style: TextStyle(fontSize: 12.0)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - LongPress'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que04Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - FontSize'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que05Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - Padding'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que06Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - Padding LRTB'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que07Elevated()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Elevated - Padding only'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que08Elevated()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Que01Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que01AllProperties.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que01AllProperties.dart',
    );
  }
}

class Que02Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que02Snackbar.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que02Snackbar.dart',
    );
  }
}

class Que03Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que03onPressed.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que03onPressed.dart',
    );
  }
}

class Que04Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que04Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que04LongPress.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que04LongPress.dart',
    );
  }
}

class Que05Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que05Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que05FontSize.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que05FontSize.dart',
    );
  }
}

class Que06Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que06Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que06usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que06usingPadding.dart',
    );
  }
}

class Que07Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que07Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que07PaddingLRTB.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que07PaddingLRTB.dart',
    );
  }
}

class Que08Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que08Elevated11(),
      sourceFilePath: 'lib/Buttons/ElevatedButton/Que08PaddingOnly.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/ElevatedButton/Que08PaddingOnly.dart',
    );
  }
}
