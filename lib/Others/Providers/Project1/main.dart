import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Providers/Project1/about.dart';
import 'package:flutter_tutorial/Others/Providers/Project1/home.dart';
import 'package:flutter_tutorial/Others/Providers/Project1/models/ui.dart';
import 'package:flutter_tutorial/Others/Providers/Project1/settings.dart';
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
