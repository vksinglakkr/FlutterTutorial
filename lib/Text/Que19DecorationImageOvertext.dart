// lib\Text\Que19DecorationImageOvertext.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que19Deco extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que19.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text on Image'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              width: 250,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.pinclipart.com/picdir/big/211-2119839_snowflakes-transparent-background-free-snowflakes-png-clipart.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. According to the Hindu mythology, Kurukshetra is a vast area spread over 48 kos, which includes many pilgrimage places, temples and sacred ponds, with which many events/rituals associated with the Pandavas and the Kauravas and Mahabharata war have been related. Kurukshetra is closely related to its development with the rise of Aryan civilization and the sacred Saraswati. ',
                //   style: (TextStyle(decoration: TextDecoration.combine(under))),
                textAlign: TextAlign.justify,
              ),
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
