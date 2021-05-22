import 'package:flutter/material.dart';

class Que26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView(
            children: [
              for (var i = 1; i < 50; i = i + 8)
                Container(
                    child: SizedBox(
                        width: i * 3.0,
                        height: i * 4.0,
                        child: Text(
                          "NIC Kurukshetra",
                          style: TextStyle(fontSize: 20.0),
                        ))),
            ],
          )),
    );
  }
}
