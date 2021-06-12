// lib\Text\Que18TextLocale.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que18Locale extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que18.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    TextStyle selectedStyle = TextStyle(color: Theme.of(context).accentColor);

    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Text(
              'العربية', // which means Arabic
              style: _getLanguageCode(context) == 'ar' ? selectedStyle : null,
            )),
            ListTile(
              title: Text(
                'English',
                style: _getLanguageCode(context) == 'en' ? selectedStyle : null,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('Managing your locale')),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }

  _getLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }
}
