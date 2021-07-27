import 'package:flutter/material.dart';

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  int count = 0;

// callback function
  // ignore: missing_return
  VoidCallback callBack() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        title: Text('Calling callBack function'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '''In this approach, the callback is directly passed to the event. As shown in the below example, the onPressed action makes the direct callback  function defined in the earlier part of the code.'''),
            SizedBox(height: 30),
            Text(
              '$count',
              style: TextStyle(fontSize: 50.0),
            ),
            ElevatedButton(

                // callback on Button press
                onPressed: callBack,
                child: Text(''
                    'increase'))
          ],
        ),
      ),
    );
  }
}
