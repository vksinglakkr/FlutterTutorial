import 'package:flutter/material.dart';

void main() => runApp(
      Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Hello World',
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );

//Error MaterialApp should be
