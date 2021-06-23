import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Theme/theme.dart';
import 'package:provider/provider.dart';

class SplashPersistent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            title: 'Flutter Theme Provider',
            theme: notifier.darkTheme ? dark : light,
            home: HomePage(),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeNotifier>(
        builder: (context, notifier, child) => SwitchListTile(
          title: Text("Dark Mode"),
          onChanged: (val) {
            notifier.toggleTheme();
          },
          value: notifier.darkTheme,
        ),
      ),
    );
  }
}
