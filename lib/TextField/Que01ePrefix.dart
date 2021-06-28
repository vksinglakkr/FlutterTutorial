// lib/TextField\Que01ePrefix.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01e11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01e11> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final for prefix

  //final TextField Que01b
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("use of prefixIcon, prefixText, prefix")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Icon'),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.access_alarm),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "icon: Icon(Icons.access_alarm)",
                    ),
                  ),
                  Text('prefixIcon'),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.access_alarm),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "prefixIcon: Icon(Icons.access_alarm)",
                    ),
                  ),
                  Text('prefixIcon (Image)'),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset('assets/VKSINGLA.jpg'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "prefixIcon: Image.assets('..')",
                    ),
                  ),
                  Text('use of IconButton with prefixIcon'),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search_off)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "Hint text",
                    ),
                  ),
                  Text('prefixText/suffixText/prefixStyle/suffixStyle'),
                  TextField(
                    decoration: InputDecoration(
                        prefixText: '#',
                        suffixText: 'USD',
                        suffixStyle: const TextStyle(color: Colors.green),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter amount",
                        helperMaxLines: 2,
                        helperStyle: TextStyle(
                          fontSize: 12,
                        )),
                  ),
                  Text(
                      'use of generic widget e.g. \nCircularProgressIndicator with prefix'),
                  TextField(
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(
                        backgroundColor: Colors.green,
                        color: Colors.red,
                        strokeWidth: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "Enter user name",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
