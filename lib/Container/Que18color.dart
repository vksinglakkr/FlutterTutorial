import 'package:flutter/material.dart';

class Que18 extends StatelessWidget {
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
            //color: Color(0xFFB78093),
            //colors: [Color(0xFFF58174c),Color(0xFFF2055c)] in case of Gradient
            //colors: Colors.red.withOpacity(0.1)
            //using ARGB (Alpha Red Green Blue)
            //color: Color.fromARGB(255, 255, 0, 0),
            //using RGBO (Red Green Blue Opacity)
            //color: Color.fromRGBO(0, 155, 0, 0.8),
            //color: msgCount[index] >= 10 ? Colors.blue[400] : msgCount[index] > 3 ? Colors.blue[100] : Colors.grey,
            // color: Colors.transparent, //for example see text widget
            child: Text('NIC Kurukshetra'),
          ),
        ),
      ),
    );
  }
}

//Note: Also see fillcolor in textField,
//Note: Also see textColor in Buttons
