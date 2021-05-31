import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que18 extends StatelessWidget {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color demo'),
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
                //color: Colors.red.shade400,
                //color: Colors.blue[300],
                //color: Colors.red.withAlpha(80),
                //color: Color(0xFFB78093),
                //colors: [Color(0xFFF58174c),Color(0xFFF2055c)] in case of Gradient
                //colors: Colors.red.withOpacity(0.1)
                //using ARGB (Alpha Red Green Blue)
                //color: Color.fromARGB(255, 255, 0, 0),
                //using RGBO (Red Green Blue Opacity)
                //color: Color.fromRGBO(0, 155, 0, 0.8),
                //color: msgCount[index] >= 10 ? Colors.blue[400] : msgCount[index] > 3 ? Colors.blue[100] : Colors.grey,
                // color: Colors.transparent, //for example see text widget
                child: Text('NIC Kurukshetra'),
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

//Note: Also see fillcolor in textField,
//Note: Also see textColor in Buttons
