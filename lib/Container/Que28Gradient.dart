import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

class Que28GradientExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtStyle = Theme.of(context).textTheme.headline4;
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text('Gradient appbar'),
        gradient: const LinearGradient(
          colors: [Colors.amber, Colors.indigo, Colors.cyan],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Container(
            height: 100,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.6, 0.9],
                  colors: [Colors.yellow, Colors.indigo, Colors.teal]),
            ),
            child: Text('LinearGradient', style: txtStyle),
          ),
          const Divider(),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                  radius: 0.7, colors: [Colors.blue, Colors.red]),
            ),
            child: Text('RadialGradient', style: txtStyle),
          ),
          const Divider(),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: SweepGradient(
                startAngle: pi / 6,
                endAngle: pi * 1.8,
                colors: [Colors.blue, Colors.yellow, Colors.red],
              ),
            ),
            child: Text('SweepGradient', style: txtStyle),
          ),
          const Divider(),
          Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: FlutterGradients.fabledSunset(),
            ),
            child: Text('Predefined gradient from flutter_gradients',
                style: txtStyle),
          )
        ],
      ),
    );
  }
}
