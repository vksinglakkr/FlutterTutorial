import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Text('Nic Kurukshetra'),
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

//Fine Whole Screen Nic Kurukshetra will show on Black Screen. Small Fonts text. No Underline.
