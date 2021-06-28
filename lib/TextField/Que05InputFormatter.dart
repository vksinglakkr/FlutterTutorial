// lib/TextField\Que05InputFormatter.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05Input extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Input> {
  //final keyBoard

  final String video1 = "NL92YO9yTB0"; //final for input formatter timing 4:10
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
                  Image(image: AssetImage('assets/help/TextField/RegEx.jpg')),
                  Text('digits only'),
                  TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.digitsOnly]",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                  Text("Allow any number of times digits from [0-9]"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ],
                    decoration: InputDecoration(
                      hintText: "RegExp('[0-9]')",
                      hintStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text("Allow only 1 digit from [0-5] i.e. [0,1,2,3,4,5]"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('^[0-5]')),
                    ],
                    decoration: InputDecoration(
                      hintText: "RegExp('^[0-5]') i.e. use of ^",
                      hintStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text("Allow only 0 to 5 number of letters from [a-zA-Z]"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp('^[a-zA-Z]{0,5}')),
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "RegExp('^[a-zA-Z]{0,5}') i.e. use of ^ and {0,5}",
                      hintStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text("use of + with ^ i.e. '^[a-zA-Z]+ same as [a-zA-Z]"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('^[a-zA-Z]+')),
                    ],
                  ),
                  Text("any number any times using \d"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'\d')),
                    ],
                  ),
                  Text("any number one times using ^\d"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d')),
                    ],
                  ),
                  Text("any number any times using ^\d*"),
                  // * or + same thing
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d*')),
                    ],
                  ),
                  Text("any number any times using ^\d+"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
                    ],
                  ),
                  Text("any digit 0 to 3 times using ^\d{0,3}"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d{0,3}')),
                    ],
                  ),
                  Text('allow only characters and space like name'),
                  Text(
                      'The r prefix before the string as in r"" makes the string a raw string. This prevents filtering and treatment of special characters within the string. '),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\s'))
                      // if we write ^ before [a-zA-Z] then it will not allow to write anything after space
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\s'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text('6 Character long, Letters(UpperCase) & Digits only'),
                  TextField(
                    maxLength: 6,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[A-Z0-9]')),
                    ], // no need to enter r as it is pure string there is no \
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[A-Z0-9]'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text(
                      'Enter Amount with only 2 decimal digits. dot at begining not allowed'),
                  Text("\\.? means dot is optional"),
                  Text("\\d+ means any number of digits"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text(
                      'Enter Amount with only 2 decimal digits. dot at begining allowed'),
                  Text("\\d?\\.? means digit before dot is optional"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+?\.?\d{0,2}'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d?\.?\d{0,2}'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text(
                      'Any number of digits before dot and any number of digits after dot. '),
                  Text("\\d+ means any number of digits"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text('deny slash and backslash / and  \\'),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text('only allow a-zA-Z'),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text('does not allow spaces'),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'\s'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text('allow a-zA-Z0-9!.'),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9!.]'))
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9!.]'))]",
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text('Combine both allow[a-zA-Z] and deny[oOwXz]'),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                      FilteringTextInputFormatter.deny(RegExp('[oOwXz]')),
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),FilteringTextInputFormatter.deny(RegExp('[oOwXz]')),],",
                      hintStyle: TextStyle(fontSize: 6),
                    ),
                  ),
                  Text("allow any character except a,b,?,."),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[^ba?.]')),
                    ],
                    decoration: InputDecoration(
                      hintText:
                          "inputFormatters: [FilteringTextInputFormatter.allow(RegExp([^ab?.]]",
                      hintStyle: TextStyle(fontSize: 6),
                    ),
                  ),
                  Text("Allow only digits and restrict two dots"),
                  TextField(
                    inputFormatters: [DecimalTextInputFormatter()],
                    decoration: InputDecoration(
                      hintText: "created a class",
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text("Allow date format mm/dd/yyyy"),
                  TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('^[1,2]')),
//                          r'^[0,1]?\d{1}\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3}))$')),
                    ],
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
