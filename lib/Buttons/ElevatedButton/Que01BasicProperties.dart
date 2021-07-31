// lib/Buttons/ElevatedButton/Que01BasicProperties.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Elevated11 extends StatefulWidget {
  @override
  _Que01Elevated11State createState() => _Que01Elevated11State();
}

class _Que01Elevated11State extends State<Que01Elevated11> {
  final String url1 =
      "https://www.kindacode.com/article/working-with-elevatedbutton-in-flutter/#google_vignette"; //final

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Elevated \nBasic Properties")),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    ElevatedButton(
                      child: Text('ButtonStyle'),
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20))),
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
                          BoxConstraints.tightFor(width: 135, height: 40),
                      child: ElevatedButton(
                        child: Text('ConstrainedBox'),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 135,
                      child: ElevatedButton(
                        child: Text('SizedBox'),
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
      ),
    );
  }
}
