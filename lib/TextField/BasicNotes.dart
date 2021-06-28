// lib/TextField/Assignment1.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01BasicNotes extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<Que01BasicNotes> {
  final String url1 =
      "https://www.geeksforgeeks.org/retrieve-data-from-textfields-in-flutter/"; //final Basic Notes

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: WidgetAppBar("Basic Notes")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: ListView(
        children: [
          Card(
            child: Text(
                "onChanged: It takes input on every change incurred in the TextField. This callback doesn’t work when TextField’s text is changed programmatically. Basically, this kind of change is initiated by the app itself."),
          ),
          Card(
            child: Text(
                "onTap: It is called for each unique tap except for every second tap of double-tap. Internally, it builds a GestureDetector to handle this kind of event. You can use it whenever you want to trigger some property of TextField which is gesture-based."),
          ),
          Card(
            child: Text(
                "onSubmitted: It is called whenever the user indicates that they are done with editing the text. Primarily, whenever the done button is pressed on the keyboard, it will be called and the data entered would be stored."),
          ),
          Card(
            child: Text(
                "onEditingComplete: It is very similar to onSubmitted. The only difference is that it is called whenever the button in the bottom right corner of the keyboard is pressed. It might be ‘done’, ‘send’, ‘go’, or ‘search’."),
          ),
        ],
      ),
    );
  }
}
