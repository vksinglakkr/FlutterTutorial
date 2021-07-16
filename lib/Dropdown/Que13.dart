import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que13 extends StatefulWidget {
  @override
  _Que13State createState() => _Que13State();
}

class _Que13State extends State<Que13> {
  final String url1 =
      "https://www.nstack.in/blog/flutter-everything-you-need-to-know-dropdown/#dropdown-example-2"; //Que13
  int selectedNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 2'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: DropdownButton<int>(
          hint: Text('Country'),
          value: selectedNumber,
          items: [
            DropdownMenuItem(
              value: 1,
              child: Text('One'),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text('Two'),
            ),
          ],
          onChanged: (value) {
            print('You selected "$value"');
            setState(() {
              selectedNumber = value;
            });
          },
        ),
      ),
    );
  }
}
