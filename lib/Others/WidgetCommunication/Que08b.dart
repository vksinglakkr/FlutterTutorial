//lib/Others/WidgetCommunication/Que08ChangeAppBarTitle.dart
import 'package:flutter/material.dart';

class Que08b extends StatefulWidget {
  _Que08bState createState() => _Que08bState();
}

class _Que08bState extends State<Que08b> {
  String title = "My favourite fruit is ";
  String fruit = 'Unknown';

  callback(varFruit) {
    setState(() {
      fruit = varFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title + fruit),
      ),
      body: Center(
        child: Column(
          children: [
            FruitButton(fruit: "Apples", callback: callback),
            FruitButton(fruit: "Oranges", callback: callback),
            FruitButton(fruit: "Grapes", callback: callback),
          ],
        ),
      ),
    );
  }
}

class FruitButton extends StatelessWidget {
  final String fruit;
  final Function callback;
  FruitButton({@required this.fruit, @required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback(fruit);
      },
      child: Text(fruit),
    );
  }
}
