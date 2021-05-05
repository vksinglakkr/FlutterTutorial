import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FadeInImage_Loading Bar'),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
          ),
        ),
      ),
    );
  }
}
