import "package:flutter/material.dart";

class Que07Assignment extends StatefulWidget {
  @override
  _Que07AssignmentState createState() => _Que07AssignmentState();
}

class _Que07AssignmentState extends State<Que07Assignment> {
// var to store
// onChanged callback
  final String url1 = "";
  final String image1 = "";
  final String video1 = ""; //final controller & toast assignment 3
  final titleController = TextEditingController();
  String text = "No Value Entered";
  bool passwordVisible = true;

  // void _setText() {
  //   setState(() {
  //     text = titleController.text;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hide/Show Password'),
        ),
        body: Container(
          child: TextField(
            obscureText: passwordVisible,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Password',
              border: UnderlineInputBorder(),
              alignLabelWithHint: false,
              filled: true,
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
