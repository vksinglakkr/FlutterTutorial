import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Que02Text11 extends StatefulWidget {
  @override
  _Que02Text11State createState() => new _Que02Text11State();
}

class _Que02Text11State extends State<Que02Text11> {
  launchURL() {
    launch('https://youtube.com/watch?v=ZSU3ZXOs6hc');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Text => SelectableText'),
        ),
        body: ListView(children: <Widget>[
          Card(
            elevation: 5,
            color: Colors.black38,
            margin: EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50),
                Text(
                  'SelectableText("text to be display")',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.white,
                  onPressed: launchURL,
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
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black45,
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
