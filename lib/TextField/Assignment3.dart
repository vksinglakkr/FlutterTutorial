// lib/TextField\Que01ePrefix.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03Assignment extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03Assignment> {
  TextEditingController myController = TextEditingController();
  final String url1 = "";
  final String image1 = "";
  final String video1 = "LO4dgcTBr_w"; //final controller & toast assignment 3
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("controller\ntoast")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Show entered value using Controller & toast'),
                  TextField(
                    cursorColor: Colors.amber,
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Enter name",
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            print(myController.text);
                            print('Name: ${myController.text}');
                          },
                          child: Text("Debug Console!")),
                      ElevatedButton(
                          onPressed: () {
                            showMessage(myController.text);
                          },
                          child: Text("Toast!")),
                      ElevatedButton(
                          onPressed: () {
                            _showDialog(context, myController.text);
                          },
                          child: Text("Alert Dialog!")),
                    ],
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

void _showDialog(BuildContext context, message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Alert!!"),
        content: new Text("$message You are awesome!"),
        actions: [
          TextButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
