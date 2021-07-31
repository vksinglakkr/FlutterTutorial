// lib/Bar\BottomBar\Que01Basic.dart
//Arun Alignment,ButtonMinWidth,ButtonPadding, Buttonheight,verticalDirection

import 'package:flutter/material.dart';

class Que01ButtonBar11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/Kurukshetra.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'ButtonBar Demo',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.orange[100],
                child: ButtonBar(
                  alignment: MainAxisAlignment.end,
                  //buttonHeight: 250.0,

                  buttonPadding: EdgeInsets.all(8),
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text('SHARE'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('EXPLORE'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
