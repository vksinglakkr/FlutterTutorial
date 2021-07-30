import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Que01MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => Favourites(), child: Que01());
  }
}

class Que01 extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My favourite fruit is' +
              Provider.of<Favourites>(context).fruit)),
      body: Center(
        child: Column(
          children: [
            FruitButton(fruit: "Apples"),
            FruitButton(fruit: "Oranges"),
            FruitButton(fruit: "Bananas"),
          ],
        ),
      ),
    );
  }
}

class FruitButton extends StatelessWidget {
  final String fruit;
  FruitButton({@required this.fruit});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Provider.of<Favourites>(context, listen: false).changeFruit(fruit);
        },
        child: Text(fruit));
  }
}

class Favourites extends ChangeNotifier {
  String fruit = 'Unknown';
  void changeFruit(String newFruit) {
    fruit = newFruit;
    notifyListeners();
  }
}
