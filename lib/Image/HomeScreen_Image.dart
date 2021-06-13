// lib\Image\HomeScreen_Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Text/Que19DecorationImageOvertext.dart';
import '../pages/BottomNavigationBar.dart';
import 'Que00Image.dart';
import 'Que01Image.dart';
import 'Que02Image.dart';
import 'Que03Image.dart';
import 'Que04Image.dart';
import 'Que05Image.dart';
import 'Que06Image.dart';
import 'Que07Image.dart';
import 'Que08Image.dart';
import 'Que09Image.dart';
import 'Que10Image.dart';
import 'Clipping/Que01Clip.dart';

import 'Clipping/Que05Clip.dart';
import 'Clipping/Que06Clip.dart';
import 'Clipping/Que07Clip.dart';
import 'Clipping/Que08Clip.dart';
import 'Clipping/Que09Clip.dart';
import 'Clipping/Que10Clip.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Image")),
     
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
                      child: Text('Various ways for obtaining an Image?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que00Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image(image: AssetImage())',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image.asset())',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image.network()',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image(image:NetworkImage())',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que04Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('fit: BoxFit.cover',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que05Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('FadeInImage.assetNetwork()',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que06Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('repeat: ImageRepeat.repeat',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que07Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('final urlImage1 = ""',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que08Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text on Image?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que19DecoraText()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('CircleAvatar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que09Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Container(decoration..',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que10Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipRRect/BorderRadius',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Clip()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipRRect/BorderRadius/BoxFit',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que07Clip()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipOval..ImageRepeat',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que04Image()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipOval/Align',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que05Clip()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('FadeInImage.assetNetwork()',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que06Clip()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipPath Assignment1',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que08Clip()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipPath Assignment2',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que09Clip()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipPath Assignment3',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que10Clip()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

class Que01Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que01Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Clipping/Que01Clip.dart',
    );
  }
}

class Que04Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que04Image11(),
      sourceFilePath: 'lib/Image/Que04Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que04Image.dart',
    );
  }
}

class Que05Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que05Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que05Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que05Clip.dart',
    );
  }
}

class Que06Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que06Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que06Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que06Clip.dart',
    );
  }
}

class Que07Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que07Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que07Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que07Clip.dart',
    );
  }
}

class Que08Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que08Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que08Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Clipping/Que08Clip.dart',
    );
  }
}

class Que09Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que09Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que09Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Clipping/Que09Clip.dart',
    );
  }
}

class Que10Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que10Clip11(),
      sourceFilePath: 'lib/Image/Clipping/Que10Clip.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Clipping/Que10Clip.dart',
    );
  }
}

class Que00Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que00Image11(),
      sourceFilePath: 'lib/Image/Que00Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que00Image.dart',
    );
  }
}

class Que01Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Image11(),
      sourceFilePath: 'lib/Image/Que01Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que01Image.dart',
    );
  }
}

class Que02Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Image11(),
      sourceFilePath: 'lib/Image/Que02Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que02Image.dart',
    );
  }
}

class Que03Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03Image11(),
      sourceFilePath: 'lib/Image/Que03Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que03Image.dart',
    );
  }
}

class Que05Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que05Image11(),
      sourceFilePath: 'lib/Image/Que05Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que05Image.dart',
    );
  }
}

class Que06Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que06Image11(),
      sourceFilePath: 'lib/Image/Que06Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que06Image.dart',
    );
  }
}

class Que07Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que07Image11(),
      sourceFilePath: 'lib/Image/Que07Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que07Image.dart',
    );
  }
}

class Que08Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que08Image11(),
      sourceFilePath: 'lib/Image/Que08Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que08Image.dart',
    );
  }
}

class Que09Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que09Image11(),
      sourceFilePath: 'lib/Image/Que09Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que09Image.dart',
    );
  }
}

class Que10Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que10Image11(),
      sourceFilePath: 'lib/Image/Que10Image.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Image/Que10Image.dart',
    );
  }
}

class Que19DecoraText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que19Deco(),
      sourceFilePath: 'lib/Text/Que19DecorationImageOvertext.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que19DecorationImageOvertext.dart',
    );
  }
}
