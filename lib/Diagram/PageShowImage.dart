import 'package:flutter/material.dart';

class PageShowImage extends StatelessWidget {
  final String image1;
  final String text1;
  const PageShowImage({@required this.image1, @required this.text1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.text1),
      ),
      body: Center(
        child: Container(
          child: Image(image: AssetImage(image1)),
        ),
      ),
    );
  }
}
