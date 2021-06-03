// lib\Buttons\RadioButton\HomeScreen_Floating.dart
import 'package:flutter/material.dart';
import 'package:radio_button/Buttons/FloatingActionButton/Que00BasicFAB.dart';
import '../FloatingActionButton/Que01onPressed.dart';
import '../FloatingActionButton/Que02CenterFloatLocation.dart';
import '../FloatingActionButton/Que03Color.dart';
import '../FloatingActionButton/Que04CustomShape.dart';
import '../FloatingActionButton/Que05ImageinText.dart';
import '../FloatingActionButton/Que06RectangleShape.dart';
import '../FloatingActionButton/Que07MiniButton.dart';
import '../FloatingActionButton/Que08Iconwithlabel.dart';
import '../FloatingActionButton/Que09DiamondShape.dart';
import '../FloatingActionButton/Que10SwitchIcon.dart';
import '../FloatingActionButton/Que11RectangleShapeRoundedCorner.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button '),
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
                      child: Text('Basic Code'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Location'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Color', style: TextStyle(fontSize: 12.0)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Custom Shape'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que04Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Display Image'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que05Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Rectangle Shape'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que06Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Mini Size'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que07Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Icon with Label'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que08Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Diamond Shape'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que09Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Switch Icon'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que10Floating()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Rectangle Shape Rounded Corner'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que11Floating()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.black45,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: MyHomePage11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que00BasicFAB.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/Buttons/FloatingActionButton/Que00BasicFAB.dart',
    );
  }
}

class Que01Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que01onPressed.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/Buttons/FloatingActionButton/Que01onPressed.dart',
    );
  }
}

class Que02Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Floating11(),
      sourceFilePath:
          'lib/Buttons/FloatingActionButton/Que02CenterFloatLocation.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/Buttons/FloatingActionButton/Que02CenterFloatLocation.dart',
    );
  }
}

class Que03Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que03Color.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/Buttons/FloatingActionButton/Que03Color.dart',
    );
  }
}

class Que04Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que04Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que04CustomShape.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/Buttons/FloatingActionButton/Que04CustomShape.dart',
    );
  }
}

class Que05Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que05Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que05ImageinText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que05ImageinText.dart',
    );
  }
}

class Que06Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que06Floating11(),
      sourceFilePath:
          'lib/Buttons/FloatingActionButton/Que06RectangleShape.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que06RectangleShape.dart',
    );
  }
}

class Que07Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que07Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que07MiniButton.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que07MiniButton.dart',
    );
  }
}

class Que08Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que08Floating11(),
      sourceFilePath:
          'lib/Buttons/FloatingActionButton/Que08Iconwithlabel.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que08Iconwithlabel.dart',
    );
  }
}

class Que09Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que09Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que09DiamondShape.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que09DiamondShape.dart',
    );
  }
}

class Que10Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que10Floating11(),
      sourceFilePath: 'lib/Buttons/FloatingActionButton/Que10SwitchIcon.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que10SwitchIcon.dart',
    );
  }
}

class Que11Floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que11Floating11(),
      sourceFilePath:
          'lib/Buttons/FloatingActionButton/Que11RectangleShapeRoundedCorner.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/FloatingActionButton/Que11RectangleShapeRoundedCorner.dart',
    );
  }
}
