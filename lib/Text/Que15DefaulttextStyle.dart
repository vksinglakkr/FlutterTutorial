import 'package:flutter/material.dart';

class Que15DeafulttextStyle extends StatelessWidget {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  style: TextStyle(fontSize: 36, color: Colors.blue),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'The first text',
                        ),
                        const Text(
                          'The second text',
                          style: TextStyle(fontSize: 24),
                        ),
                        const Text(
                          'The third text',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'The fourth text',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
