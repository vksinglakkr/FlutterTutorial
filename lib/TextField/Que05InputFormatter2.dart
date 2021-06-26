// lib/TextField\Que05InputFormatter2.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class Que05Input2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Input2> {
  final String url1 =
      "https://pub.dev/packages/pattern_formatter"; //final pattern formatter
  final String image1 = "";
  final String video1 = "6U1U8BNo1OQ"; //final for Pattern input formatter
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Input Formatter")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Thousands formatter only'),
                  TextField(
                    inputFormatters: [ThousandsFormatter()],
                    decoration: InputDecoration(
                      hintText: "inputFormatters: [ThousandsFormatter()]",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                  Text('Thousands(decimal) formatter only'),
                  TextField(
                    inputFormatters: [ThousandsFormatter(allowFraction: true)],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [ThousandsFormatter(allowFraction: true)]",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                  Text('CreditCard formatter'),
                  TextField(
                    inputFormatters: [CreditCardFormatter()],
                    decoration: InputDecoration(
                      hintText: "inputFormatters: [CreditCardFormatter()],",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                  Text('DateInput Formatter'),
                  TextField(
                    inputFormatters: [DateInputFormatter()],
                    decoration: InputDecoration(
                      hintText: "inputFormatters: [DateInputFormatter()]",
                      hintStyle: TextStyle(fontSize: 13),
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

class DecimalTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regEx = RegExp(r"^\d*\.?\d*");
    String newString = regEx.stringMatch(newValue.text) ?? "";
    return newString == newValue.text ? newValue : oldValue;
  }
}
