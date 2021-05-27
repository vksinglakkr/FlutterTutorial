import 'package:flutter/material.dart';

class MyAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle selectedStyle = TextStyle(color: Theme.of(context).accentColor);

    return Scaffold(
      appBar: AppBar(),
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
      body: Center(child: Text('Managing your locale')),
    );
  }

  _getLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }
}
