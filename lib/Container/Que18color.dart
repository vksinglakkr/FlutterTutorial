import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color demo'),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            //color: Colors.red.shade400,
            //color: Colors.blue[300],
            //color: Colors.red.withAlpha(80),
            //color: Color(0xFFF58174c), //check it error
            //colors: [Color(0xFFF58174c),Color(0xFFF2055c)] in case of Gradient
            //colors: Colors.red.withOpacity(0.1)
            child: Text('NIC Kurukshetra'),
          ),
        ),
      ),
    );
  }
}

//Note: Also see fillcolor in textField,
//Note: Also see textColor in Buttons
