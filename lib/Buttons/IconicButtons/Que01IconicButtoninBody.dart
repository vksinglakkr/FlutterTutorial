// lib\Text\Que01SelectableText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Iconic11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Text/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Iconic Buttons \nin Body")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(children: <Widget>[
          Container(
              padding: EdgeInsets.all(20),
              child: SelectableText(
                'Kurukshetra has been described in the first verse of Shrimad bhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
        ]),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
