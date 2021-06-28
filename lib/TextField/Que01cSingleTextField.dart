// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01c11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01c11> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final

  //final TextField Que01b
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("disabled, readonly, padding")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('disabled'),
                  TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "enabled: false",
                    ),
                  ),
                  Text('readOnly'),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText:
                          "readOnly:true.Similar to disabling, but give callbacks such as onTap etc.",
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                  Text('contentPadding'),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(40.0),
                      labelText: 'contentPadding: EdgeInsets..',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Text('Padding'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: TextField(
                      cursorColor: Color.fromRGBO(25, 118, 218, 1),
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color.fromRGBO(25, 118, 218, 1)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color.fromRGBO(25, 118, 218, 1)),
                        ),
                        labelText: "Padding as Parent",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: const Icon(
                          Icons.phone_outlined,
                          color: Color.fromRGBO(25, 118, 218, 1),
                        ),
                      ),
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
