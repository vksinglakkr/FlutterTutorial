// /lib/ListView/Que19OneItemAtTime.dart';

import 'package:flutter/material.dart';

class Que19 extends StatefulWidget {
  @override
  _Que19State createState() => _Que19State();
}

class _Que19State extends State<Que19> {
  List<Icon> scorekeper = [];
  List<String> question = [
    'You can simply use TextButton at a place such as AppBar to close the screen, inside the dialog for closing it, etc. You’ll want to avoid placing this button inside any scrollable list for obvious UI/UX reasons.',
    'ElevatedButton is best suited in places where the app requires direct action from the user, such as confirming an order or booking a ticket. Since it’s already elevated, you should avoid putting it over any other elevated widgets, such as cards.',
    'In many ways, OutlinedButton is a mixture of TextButton and ElevatedButton. It’s a TextButton if you remove the border and gives the impression of ElevatedButton if you hover or press over it. This button is a medium-emphasis button meaning it can be used at the place where the action is important but not crucial.'
  ];
  List<bool> answer = [true, true, true];
  int questionNumber = 0;
  bool correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('One Item at a Time'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(question[questionNumber],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      questionNumber++;
                      correctAnswer = answer[questionNumber];
                      if (correctAnswer == true) {
                        print("Right");
                      } else {
                        print("Wrong");
                      }
                    });
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  child: Text("True",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )),
                )),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      questionNumber++;
                      correctAnswer = answer[questionNumber];
                      if (correctAnswer == true) {
                        print("Right");
                      } else {
                        print("Wrong");
                      }
                    });
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                  child: Text("False",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )),
                )),
          )
        ],
      ),
    );
  }
}
