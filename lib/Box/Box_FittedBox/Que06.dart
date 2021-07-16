import 'package:flutter/material.dart';

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.purple,
              child: Text(
                'Big Sur',
                style: TextStyle(fontSize: 200, color: Colors.white),
              ),
            ),
            Spacer(flex: 1),
            Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.purple,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Big Sur',
                    style: TextStyle(fontSize: 200, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
