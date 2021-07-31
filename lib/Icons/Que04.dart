//Arun size,color

import 'package:flutter/material.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
            "semanticLable: It comes in play while using the app in accessibility mode (ie, voice-over)"),
      ),
    );
  }
}
