// lib\Text\Que25ShowContent_of_TextFileWithoutWidget.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que25Show extends StatefulWidget {
  @override
  _Que25ShowState createState() => _Que25ShowState();
}

class _Que25ShowState extends State<Que25Show> {
  var data;

  // This function is triggered when the user presses the floating button
  Future<void> _loadData() async {
    final _loadedData =
        await rootBundle.loadString('lib/Text/Que01SelectableText.dart');
    setState(() {
      data = _loadedData;
    });
  }

  final String url1 = "";
  final String image1 = "assets/help/Text/Que25.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => SelectableText'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(children: <Widget>[
        Card(
          elevation: 5,
          color: Colors.deepPurple[300],
          margin: EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 50),
              Text(
                'SelectableText("text to be display")',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.all(20),
            child: SelectableText(
              'Kurukshetra has been described in the first verse of Shrimad bhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        ElevatedButton(
          onPressed:
              // ignore: unnecessary_statements
              _loadData,
          child: Text(
            data != null ? data : 'Code',
          ),
        ),
      ]),
      floatingActionButton: WidgetFab(),
    );
  }
}
