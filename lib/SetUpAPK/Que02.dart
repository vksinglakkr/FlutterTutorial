// lib\SetUpAPK\Que01.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Que0211 extends StatelessWidget {
  launchURL() {
    launch('https://morioh.com/p/5615675eecdd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting of minSDKVersion?'),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.orange[800],
            margin: EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: const Icon(Icons.image),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyAppImage()),
                      );
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Card(
              color: Colors.indigoAccent,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text('android -> app -> src -> build.gradle',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting of minSDKVersion'),
      ),
      body: Center(
          child: Container(
        child: Image.asset("assets/help/SetUpAPK/minSDKVersion.png"),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
