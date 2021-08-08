import 'package:flutter/material.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Within CircleAvatar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //aligns children to Center.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Text(
                'S',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.orange,
            ),
            SizedBox(
              width: 5.0, //empty space between CircleAvatar widgets.
            ),
            CircleAvatar(
              child: Text(
                'Sun',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
