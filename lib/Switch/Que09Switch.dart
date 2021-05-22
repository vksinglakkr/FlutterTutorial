import 'package:flutter/material.dart';

class Que09 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que09> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('How to show text on Track'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Transform.scale(
                scale: 3,
                child: Switch.adaptive(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() => isSwitched = value);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("May be set its own as per Android or iOS")
          ],
        ));
  }
}
