import 'package:flutter/material.dart';

class MyAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
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
      ),
    );
  }
}
