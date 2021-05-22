import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
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
