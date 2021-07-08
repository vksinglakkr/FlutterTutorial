import 'package:flutter/material.dart';

class Que08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        color: Colors.red,
        height: 400,
        width: 300,
        child: FractionallySizedBox(
          heightFactor: 0.50,
          widthFactor: 0.50,
          child: Container(
            color: Colors.yellowAccent,
            child: FractionallySizedBox(
              heightFactor: 0.50,
              widthFactor: 0.50,
              child: Container(
                color: Colors.yellow,
                child: FractionallySizedBox(
                  heightFactor: 0.50,
                  widthFactor: 0.50,
                  child: Container(
                    color: Colors.green,
                    child: FractionallySizedBox(
                      heightFactor: 0.5,
                      widthFactor: 0.5,
                      child: Container(
                        color: Colors.red,
                        child: FractionallySizedBox(
                          heightFactor: 0.5,
                          widthFactor: 0.5,
                          child: Container(
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
