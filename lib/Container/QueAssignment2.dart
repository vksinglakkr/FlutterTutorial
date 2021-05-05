import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 2'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF2AA650),
                child: Text('2AA650'),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      color: Color(0xFF3BB920),
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
                          flex: 8,
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
              flex: 2,
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
