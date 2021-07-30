// lib/Bar\AppBar\Que01Actions.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Que11ActionEx3 extends StatefulWidget {
  @override
  _Que11ActionEx3State createState() => _Que11ActionEx3State();
}

class _Que11ActionEx3State extends State<Que11ActionEx3> {
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";

  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
  }

  Color selectColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Iconic Buttons \nin AppBar"),
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              color: selectColor,
              onPressed: launchURL,
            ),
            IconButton(
                icon: const Icon(Icons.image),
                color: selectColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAppImage()),
                  );
                }),
            IconButton(
                icon: const Icon(Icons.play_arrow),
                color: selectColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAppVideo()),
                  );
                }),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.amber,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Wrap(
                        children: [
                          Text(
                            '''actions: [ 
      IconButton(
      icon: Icon(Icons.search), 
                 onPressed: (){}
                   color: $selectColor,)])''',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _getBottomBar(),
        floatingActionButton: WidgetFab(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        CustColor(
          propText: "   color:",
          startColor: selectColor,
          onValueChange: (value) {
            setState(() {
              selectColor = value;
            });
          },
        )
      ]),
    );
  }
}
