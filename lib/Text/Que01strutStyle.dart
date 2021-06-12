// lib\Text\Que01strutStyle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que01strut extends StatelessWidget {
  final String url1 =
      "https://medium.com/@najeira/control-text-height-using-strutstyle-4b9b5151668b";
  final String image1 = "assets/help/Text/Que01strutStyle.png";
  final String video1 = "9z_YNlRlWfA";
  // launchURL() {
  //  launch('https://nicksnettravels.builttoroam.com/flutter-text-widget/');
  // }

  @override
  Widget build(BuildContext context) {
    String str1 =
        "Setting the strutStyle property gives you the ability to fine-tune the separation between rows of text. For example, if you have a number of Text widgets that have differing font style and sizes, you can specify the strutStyle to ensure the same spacing between each row.";
    return Scaffold(
      appBar: AppBar(
        title: Text('Text=>Properties=>strutStyle'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(children: [
          //Setting the strutStyle property gives you the ability to fine-tune the
          //separation between rows of text. For example, if you have a number of
          //Text widgets that have differing font style and sizes, you can specify
          //the strutStyle to ensure the same spacing between each row.
          //https://nicksnettravels.builttoroam.com/flutter-text-widget/
          Text(str1,
              style: TextStyle(fontSize: 12),
              strutStyle: StrutStyle(fontSize: 13)),
          SizedBox(height: 5),
          Text(str1,
              style: TextStyle(fontSize: 14),
              strutStyle: StrutStyle(fontSize: 13)),
          SizedBox(height: 5),
          Text(str1,
              style: TextStyle(fontSize: 12),
              strutStyle: StrutStyle(fontSize: 13)),
          Divider(color: Colors.black, thickness: 5, indent: 20, endIndent: 20),
          const Text.rich(
            TextSpan(
              text: '---------         ---------\n',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '^^^M^^^\n',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                  ),
                ),
                TextSpan(
                  text: 'M------M\n',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              height: 1,
              forceStrutHeight: true,
            ),
          ),
          Divider(color: Colors.black, thickness: 5, indent: 20, endIndent: 20),
          const Text.rich(
            TextSpan(
              text: '       he candle flickered\n',
              style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
              children: <TextSpan>[
                TextSpan(
                  text: 'T',
                  style: TextStyle(fontSize: 37, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'in the moonlight as\n',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'Dash the bird fluttered\n',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'off into the distance.',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Serif',
              fontSize: 14,
              forceStrutHeight: true,
            ),
          ),
        ]),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
