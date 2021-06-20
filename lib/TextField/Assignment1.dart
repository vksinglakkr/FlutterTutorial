// lib/TextField/Assignment1.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Assignment extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<Que01Assignment> {
  final String url1 =
      "https://kodestat.gitbook.io/flutter/36-flutter-rows-and-columns"; //final Assignment 1
  final String image1 = "";
  final String video1 = "";
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: WidgetAppBar("Assignment - Login form")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Please Login'),
              new Row(
                children: <Widget>[
                  new Text('Username'),
                  /*this will give an error because TextField is infinite, you can type
                  and type, it doesn't know where to stop and confuse Flutter but our
                  screen width is limited o to solve this we use 'Expanded' widget
                  controller is like an Android Cursor and we use it with TextField*/
                  //new TextField(controller: _user,)

                  new Expanded(
                      child: new TextField(
                    controller: _user,
                  ))
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text('Password'),
                  //obscureText changes text to dots for password fields
                  new Expanded(
                      child: new TextField(
                    controller: _pass,
                    obscureText: true,
                  ))
                ],
              ),
              new Padding(
                padding: new EdgeInsets.all(32.0),
                //onPressed will show login with the username typed on terminal
                child: ElevatedButton(
                  onPressed: () => print('Login ${_user.text}'),
                  child: new Text('Click me'),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
