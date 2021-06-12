// lib\Padding\Que01EdgeInsetsDirectional.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class MyAppEdgeInSets11 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Padding/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("EdgeInsetsDirectional")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              //Difference between Start/End & Left/Right.
              //In Right to left (e.g. Urdu Start==Right, end==Left)
              //In Left to Right (e.g. English Start==Left, end==Right)
              padding: const EdgeInsetsDirectional.only(end: 12.0),
              //STEB start, top, end, bottom
              //  padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),

              child: Text(
                  'Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. According to the Hindu mythology, Kurukshetra is a vast area spread over 48 kos, which includes many pilgrimage places, temples and sacred ponds, with which many events/rituals associated with the Pandavas and the Kauravas and Mahabharata war have been related. Kurukshetra is closely related to its development with the rise of Aryan civilization and the sacred Saraswati. ',
                  textAlign: TextAlign.end),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
