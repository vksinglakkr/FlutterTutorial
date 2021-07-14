import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  //MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  // CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          height: 100,
          color: Colors.red,
          child: DropdownButton<MainAxisAlignment>(
            value: _mainAxisAlignment,
            onChanged: (MainAxisAlignment newVal) {
              if (newVal != null) {
                //               setState(() => this._mainAxisSize = newVal);
              }
            },
            items: MainAxisAlignment.values
                .map((MainAxisAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('MainAxisAlignment.'.length)),
                    ))
                .toList(),
          ),
        ),
      ), //Scaffold
    );
  }
}
