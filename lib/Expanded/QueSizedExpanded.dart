// lib/TextField\Que08Controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class QueSizedExpanded11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<QueSizedExpanded11> {
  final String url1 = "https://morioh.com/p/bc54dc16a5ab"; //final
  final String image1 = "";
  final String video1 = "";
  final TextEditingController myControllerName = TextEditingController();
  final TextEditingController myControllerFName = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    myControllerName.addListener(_printLatestValue);
    myControllerFName.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myControllerName.dispose();
    myControllerFName.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('First text field: ${myControllerName.text}');
    print('Second text field: ${myControllerFName.text}');
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("Handle changes \nusing Controller?")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
                controller: myControllerName,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Father Name',
                ),
                controller: myControllerFName,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
