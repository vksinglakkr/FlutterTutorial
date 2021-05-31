import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que12 extends StatelessWidget {
  final random = Random();
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Constraints Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('width, height & constraints Demo'),
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.black38,
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.info),
                    color: Colors.black,
                    onPressed: launchURL,
                  ),
                  IconButton(
                      icon: const Icon(Icons.image),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppImage()),
                        );
                      }),
                  IconButton(
                      icon: const Icon(Icons.play_arrow),
                      color: Colors.black,
//                  onPressed: launchURL,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppVideo()),
                        );
                      }),
                ],
              ),
            ),
            Center(
              child: Container(
                color: Colors.red,
                //   width: 200.0,
                height: 200.0,
                //media query
                //width: double.infinity,
                //width: MediaQuery.of(context).size, //error
                //Random Number
                //width: random.nextInt(200).toDouble(),
                //constraints: BoxConstraints.expand(height: 100, width: 150),
                //constraints: BoxConstraints.expand(width: 150),
                //constraints: BoxConstraints.expand(),
                //constraints: BoxConstraints.tightForFinite(width:200.0),
                //constraints: BoxConstraints(
                //     maxHeight: 200.0,
                //     minHeight: 50.0,
                //     maxWidth: 200.0,
                //     minWidth: 100.0),
                //alignment: Alignment.topLeft,
                child: Center(
                    child: Text("NIC Kurukshetra",
                        style: TextStyle(fontSize: 30.0))),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black45,
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}

//Note 1: if we wrap Text in Center widget and we have not used width, height & constraints we get the max values.
//Note 2: if we used alignment we get the max values.
//Note 3: if we set width and also set min width in constraints, then it will take width value set outside constraints.
//Note 4: What will happen if we set .expand and Alignmnet.center, width & height i.e. all 4 things. Ans Full screen.
