import 'package:flutter/material.dart';

class QueAssign1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      color: Color(0xFF2AA650),
                      child: Text('2AA650'),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            color: Color(0xFF58AAc8),
                            child: Text('58AAc8'),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            color: Color(0xFFc74E33),
                            child: Text('0xFFc74E33'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF8D43B3),
                child: Text('8D43B3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
