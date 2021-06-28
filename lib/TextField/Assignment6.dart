import "package:flutter/material.dart";

class Que06Assignment extends StatefulWidget {
  @override
  _Que06AssignmentState createState() => _Que06AssignmentState();
}

class _Que06AssignmentState extends State<Que06Assignment> {
// var to store
// onChanged callback
  final String url1 =
      "https://www.geeksforgeeks.org/retrieve-data-from-textfields-in-flutter/"; //final Assignment 6

  //final controller & toast assignment 3
  final titleController = TextEditingController();
  String text = "No Value Entered";

  void _setText() {
    setState(() {
      text = titleController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Controller\nElevatedButton(onPress..)'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
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
          ],
        ),
      ),
    );
  }
}
