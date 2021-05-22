import 'dart:ui';

import 'package:flutter/material.dart';

class Que06aOverflow extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que06aOverflow> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => Overflow Property'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'overflow: TextOverflow.visible',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Text(
                  'Text in Row or Container=>Kurukshetra has been described in the first verse of Shrimad bhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. ',
                  overflow: TextOverflow.visible,
                ),
              ),
            ]),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(height: 10),
                Flexible(
                  child: Text(
                    'Solution=>Just wrap in inside a widget that can take a specific width e.g.Flexible/Expanded/Sized/Container(BoxConstraints).\nKurukshetra has been described in the first verse of Shrimad bhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar.  ',
                    //  overflow: TextOverflow.fade,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
