// lib/TextField\Que01ePrefix.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04Assignment extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04Assignment> {
  TextEditingController myController = TextEditingController();
  final String url1 = "";
  final String image1 = "";
  final String video1 = "LO4dgcTBr_w"; //final controller & toast assignment 3
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("onSubmitted,\nonTap,OnEditingComplete")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('onSubmitted,onTap,OnEditingComplete'),
                  TextField(
                    cursorColor: Colors.amber,
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Enter name",
                    ),
//                    onSubmitted: (text) {
//                      showMessage(myController.text);
//                    },
//                    onSubmitted: (text) => showMessage(myController.text),

//                    onTap: () => showMessage(myController),
                    onTap: () {
                      showMessage(myController);
                    },
//                    onEditingComplete: () => showMessage(myController),
//                    onEditingComplete: () {
//                      showMessage(myController.text);
//                    },
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
