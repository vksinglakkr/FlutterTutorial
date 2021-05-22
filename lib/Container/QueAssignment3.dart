import 'package:flutter/material.dart';

class QueAssign3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 3'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF2AA650),
                child: Text('2AA650'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      color: Color(0xFF3BB920),
                      child: Text('2AA650'),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.center,
                      color: Color(0xFF58AAc8),
                      child: Text('58AAc8'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF8D43B3),
                child: Text('8D43B3'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF58AAc8),
                child: Text('58AAc8'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
