import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Providers/about.dart';
import 'package:flutter_tutorial/Others/Providers/home.dart';
import 'package:flutter_tutorial/Others/Providers/models/ui.dart';
import 'package:flutter_tutorial/Others/Providers/settings.dart';
import 'package:provider/provider.dart';

class QueProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UI()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}
