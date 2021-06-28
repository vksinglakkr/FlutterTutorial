import "package:flutter/material.dart";

class Que05Assignment extends StatefulWidget {
  @override
  _Que05AssignmentState createState() => _Que05AssignmentState();
}

class _Que05AssignmentState extends State<Que05Assignment> {
// var to store
// onChanged callback
  final String url1 =
      "https://www.geeksforgeeks.org/retrieve-data-from-textfields-in-flutter/"; //final Assignment 5

  //final controller & toast assignment 3
  String title;
  String text = "No Value Entered";

  void _setText() {
    setState(() {
      text = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('retrival of \nvalue using onChanged'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) => title = value,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _setText,
            child: Text('Submit'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(text),
          // changes in text
          // are shown here
        ],
      ),
    );
  }
}
