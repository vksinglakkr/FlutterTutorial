import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que12 extends StatefulWidget {
  @override
  _Que12State createState() => _Que12State();
}

class _Que12State extends State<Que12> {
  final String url1 =
      "https://www.nstack.in/blog/flutter-everything-you-need-to-know-dropdown/#dropdown-example-2"; //Que12
  String selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 1'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: DropdownButton<String>(
          hint: Text('Country'),
          value: selectedCountry,
          items: <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(
              value: 'India',
              child: Text('India'),
            ),
            DropdownMenuItem<String>(
              value: 'Nepal',
              child: Text('Nepal'),
            ),
            DropdownMenuItem<String>(
              value: 'Bhutan',
              child: Text('Bhutan'),
            ),
            DropdownMenuItem<String>(
              value: 'Sri lanka',
              child: Text('Sri Lanka'),
            ),
          ],
          onChanged: (String country) {
            print('You selected "$country"');
            setState(() {
              selectedCountry = country;
            });
          },
        ),
      ),
    );
  }
}
