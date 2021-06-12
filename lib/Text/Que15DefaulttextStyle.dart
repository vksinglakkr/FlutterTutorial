// lib\Text\Que15DefaulttextStyle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que15Default extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que15.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => DefaultTextStyle'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultTextStyle(
                style: TextStyle(fontSize: 36, color: Colors.blue),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'The first text',
                      ),
                      const Text(
                        'The second text',
                        style: TextStyle(fontSize: 24),
                      ),
                      const Text(
                        'The third text',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'The fourth text',
              ),
            ],
          ),
        ),
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
