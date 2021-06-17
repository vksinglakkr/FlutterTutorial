// lib/Divider\Que01DividerTheme2.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06Elevated11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Set properties \nusing ThemeData',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                side: BorderSide(color: Colors.red, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    wordSpacing: 2,
                    letterSpacing: 2))),
      ),
      home: MyHomePage(title: 'Set properties \nusing ThemeData'),
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
  Color bulbColor = Colors.black;
  final String url1 =
      "https://stackoverflow.com/questions/53531675/how-to-apply-theme-on-materialbutton-or-raisedbutton"; //final
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar(widget.title)),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Basic Example'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Basic')),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('With Icon'),
                    icon: Icon(Icons.access_alarm),
                  ),
                ],
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Enabled/Disabled Button'),
              // An enabled button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Enabled Button'),
                    onPressed: () {},
                  ),
                  // A disabled button
                  ElevatedButton(
                      onPressed: null, child: Text('Disabled Button')),
                ],
              ),

              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Styling: StyleFrom/ButtonStyle'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('StyleFrom'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(
                    child: Text('ButtonStyle'),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Border'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                      width: 5,
                      color: Colors.red,
                    )),
                    child: Text('Elevated Button with Border'),
                  ),
                ],
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Width & height'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 100, height: 40),
                    child: ElevatedButton(
                      child: Text('100 x 40'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
