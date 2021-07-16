import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que12 extends StatefulWidget {
  @override
  _Que12State createState() => _Que12State();
}

class _Que12State extends State<Que12> {
  final String url1 =
      "https://www.nstack.in/blog/flutter-everything-you-need-to-know-dropdown/#dropdown-example-2"; //Que12
  String selectedCountry1 = "India";
  String selectedCountry2 = "India";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 1'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Spacer(flex: 1),
          Text(selectedCountry1),
          Center(
            child: DropdownButton(
              hint: Text('Country'),
              value: selectedCountry1,
              items: [
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
              onChanged: (country) {
                print('You selected "$country"');
                setState(() {
                  selectedCountry1 = country;
                });
              },
            ),
          ),
          Spacer(flex: 1),
          Text(selectedCountry2),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.map),
                title: Text('India'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Nepal'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Bhutan'),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Sri lanka'),
                
              ),
            ],

          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
