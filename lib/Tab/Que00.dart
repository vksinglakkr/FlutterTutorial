import 'package:flutter/material.dart';

class Que00 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagram'),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
                image:
                    AssetImage("assets/images/1_j49HIY0az28VWMDrmUu9eg.png")),
            Image(
                image:
                    AssetImage("assets/images/1_K6CQNn_t3djBjhp-ThCmrg.jpeg")),
          ],
        ),
      ),
    );
  }
}
