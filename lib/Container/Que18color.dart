// lib/Container\Que18color.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1811 extends StatefulWidget {
  @override
  _Que1811State createState() => _Que1811State();
}

class _Que1811State extends State<Que1811> {
  final String url1 = "https://flutter.dev/";

  final String image1 = "assets/help/Container/Que18.png";

  final String video1 = "JDDoN2THwug";
  Color _selectColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Color ")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: _selectColor,
                //color: Colors.red.shade400,
                //color: Colors.blue[300],
                //color: Colors.red.withAlpha(80),
                //color: Color(0xFFB78093),
                //colors: [Color(0xFFF58174c),Color(0xFFF2055c)] in case of Gradient
                //colors: Colors.red.withOpacity(0.1)
                //using ARGB (Alpha Red Green Blue)
                //color: Color.fromARGB(255, 255, 0, 0),
                //primaryColor: Color(0xFF075E54), Whatsapp Color
                //accentColor: Color(0xFF128C7E),
                //using RGBO (Red Green Blue Opacity)
                //color: Color.fromRGBO(0, 155, 0, 0.8),
                //color: msgCount[index] >= 10 ? Colors.blue[400] : msgCount[index] > 3 ? Colors.blue[100] : Colors.grey,
                // color: Colors.transparent, //for example see text widget
                child: Text(
                  'NIC Kurukshetra',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Theme.of(context).primaryColorLight,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          CustColor(
              propText: "   color:",
              startColor: _selectColor,
              onValueChange: (onValueChange) {
                setState(() {
                  _selectColor = onValueChange;
                });
              })
        ]),
      ),
    );
  }
}

//Note: Also check Padding as Widgets



//Note: Also see fillcolor in textField,
//Note: Also see textColor in Buttons
