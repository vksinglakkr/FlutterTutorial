import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
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
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
//Que01CustomContainer_Visibility.dart
// onPressed: () => setState(() => _visible1 = !_visible1),
// onPressed: () {
//   setState(() {
//     _visible1 = !_visible1;
//   });
// },
////////////////////////////////////////////////////////////////
//onPressed: () => setState(() {
//   if (fabIconNumber == 0) {
//     fab = Icon(
//       Icons.stop,
//     );
//     fabIconNumber = 1;
//   } else {
//     fab = Icon(Icons.refresh);
//     fabIconNumber = 0;
//   }
// }),
//Que01CustomContainer_Visibility.dart
//CustomContainer(txtData: 'Orange', colorName: Colors.orange)),

//class CustomContainer extends StatelessWidget {
// const CustomContainer({
//   Key key,
//   this.txtData,
//   this.colorName,
// }) : super(key: key);
// final String txtData;
// final Color colorName;
////////////////////////////////////////////////////////////////
