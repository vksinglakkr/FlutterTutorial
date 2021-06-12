// lib\Text\Que19Marquee.dart
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que19marquee extends StatefulWidget {
  @override
  _Que19marqueeState createState() => _Que19marqueeState();
}

class _Que19marqueeState extends State<Que19marquee> {
  String str1 =
      "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. According to the Hindu mythology, Kurukshetra is a vast area spread over 48 kos, which includes many pilgrimage places, temples and sacred ponds, with which many events/rituals associated with the Pandavas and the Kauravas and Mahabharata war have been related. Kurukshetra is closely related to its development with the rise of Aryan civilization and the sacred Saraswati. This is the land where Manusmriti was written by Rishi Manu and the compilation of Rigveda, Samaveda by the wise Rishis. The name of Kurukshetra was named after King Kuru. By which great sacrifices were made for the prosperity of this land and its people.";

  final String url1 = "";
  final String image1 = "assets/help/Text/Que19Marquee.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marquee'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Marquee(
            text: str1,
            blankSpace: 20,
            accelerationCurve: Curves.easeOutCubic,
            //accelerationCurve: Curves.linear,
            velocity: 100,
            startPadding: 10.0,
            pauseAfterRound: Duration(seconds: 1),
            startAfter: Duration(seconds: 1),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            showFadingOnlyWhenScrolling: true,
            fadingEdgeStartFraction: 0.1,
            fadingEdgeEndFraction: 0.1,
            numberOfRounds: 3,
            accelerationDuration: Duration(seconds: 1),
            decelerationDuration: Duration(milliseconds: 500),
            decelerationCurve: Curves.easeOut,

            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
