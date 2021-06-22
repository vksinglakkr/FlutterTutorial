// import 'package:flutter/material.dart';
// import 'package:flutter_tutorial/pages/HomeScreen.dart';
// //import 'package:like_button/like_button.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';

// class MainTheme extends StatefulWidget {
//   @override
//   _MainThemeState createState() => _MainThemeState();
// }

// class _MainThemeState extends State<MainTheme> {
//   int likeCount = 999;

//   double buttonSize = 16.0;
//   // ignore: non_constant_identifier_names
//   Color CircleStartColor = Colors.teal;
//   // ignore: non_constant_identifier_names
//   Color CircleEndColor = Colors.red;
//   // ignore: non_constant_identifier_names
//   Color LikeColor = Colors.blue;
//   // ignore: non_constant_identifier_names
//   Color DisLikeColor = Colors.grey;
//   // ignore: non_constant_identifier_names
//   int _RadioShowNumberValue = 0;

//   void _setButtonSizeValue(double value) {
//     setState(() {
//       buttonSize = value;
//     });
//   }

//   // ignore: non_constant_identifier_names
//   void changeStartColor(Color SelectedClr) =>
//       setState(() => CircleStartColor = SelectedClr);

//   // ignore: non_constant_identifier_names
//   void changeEndColor(Color SelectedClr) =>
//       setState(() => CircleEndColor = SelectedClr);

//   // ignore: non_constant_identifier_names
//   void changeLikeColor(Color SelectedClr) =>
//       setState(() => LikeColor = SelectedClr);

//   // ignore: non_constant_identifier_names
//   void changeDisLikeColor(Color SelectedClr) =>
//       setState(() => DisLikeColor = SelectedClr);

//   // ignore: non_constant_identifier_names
//   void _RadioNumberShowChange(int value) {
//     setState(() {
//       _RadioShowNumberValue = value;
//     });
//   }

//   // ignore: non_constant_identifier_names
//   IconButton ColorBtn(Color Clr, int index) {
//     return IconButton(
//       icon: Icon(Icons.edit),
//       onPressed: () {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//                 title: Text('Select a color'),
//                 content: Column(
//                   children: <Widget>[
//                     SingleChildScrollView(
//                       child: BlockPicker(
//                         pickerColor: Clr,
//                         // ignore: non_constant_identifier_names
//                         onColorChanged: (SlectedColor) {
//                           if (index == 1) {
//                             changeStartColor(SlectedColor);
//                           } else if (index == 2) {
//                             changeEndColor(SlectedColor);
//                           } else if (index == 3) {
//                             changeLikeColor(SlectedColor);
//                           } else if (index == 4) {
//                             changeDisLikeColor(SlectedColor);
//                           }
//                         },
//                       ),
//                     ),
//                     ElevatedButton(
//                       child: Text("Close"),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     )
//                   ],
//                 ));
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("Set Preferences"),
//             ),
//             body: Column(
//               children: <Widget>[
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 200,
//                   child: Column(
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Text("Appbar Fonts size " +
//                               buttonSize.toInt().toString()),
//                           new Slider(
//                               min: 10,
//                               max: 24,
//                               value: buttonSize,
//                               onChanged: _setButtonSizeValue),
//                         ],
//                       ),
//                       Row(
//                         children: <Widget>[
//                           Text("Primary Color:"),
//                           ClipOval(
//                             child: Container(
//                               width: 30,
//                               height: 30,
//                               color: CircleStartColor,
//                             ),
//                           ),
//                           ColorBtn(CircleStartColor, 1),
//                           SizedBox(
//                             width: 2,
//                           ),
//                           Text("CircleEndColor:"),
//                           ClipOval(
//                             child: Container(
//                               width: 30,
//                               height: 30,
//                               color: CircleEndColor,
//                             ),
//                           ),
//                           ColorBtn(CircleEndColor, 2),
//                         ],
//                       ),
//                       Row(
//                         children: <Widget>[
//                           Text("LikeColor         :"),
//                           ClipOval(
//                             child: Container(
//                               width: 30,
//                               height: 30,
//                               color: LikeColor,
//                             ),
//                           ),
//                           ColorBtn(LikeColor, 3),
//                           SizedBox(
//                             width: 2,
//                           ),
//                           Text("DisLikeColor     :"),
//                           ClipOval(
//                             child: Container(
//                               width: 30,
//                               height: 30,
//                               color: DisLikeColor,
//                             ),
//                           ),
//                           ColorBtn(DisLikeColor, 4),
//                         ],
//                       ),
//                       Row(
//                         children: <Widget>[
//                           new Text('Show using:'),
//                           new Radio(
//                             value: 0,
//                             groupValue: _RadioShowNumberValue,
//                             onChanged: _RadioNumberShowChange,
//                           ),
//                           new Text('Buttons'),
//                           new Radio(
//                             value: 1,
//                             groupValue: _RadioShowNumberValue,
//                             onChanged: _RadioNumberShowChange,
//                           ),
//                           new Text('Cards'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: Center(
//                       child: LikeButton(
//                         size: buttonSize,
//                         circleColor: CircleColor(
//                             start: CircleStartColor, end: CircleEndColor),
//                         likeCount:
//                             (_RadioShowNumberValue == 0) ? likeCount : null,
//                         likeBuilder: (bool isLiked) {
//                           if (isLiked) {
//                             return Icon(
//                               Icons.favorite,
//                               color: LikeColor,
//                               size: buttonSize,
//                             );
//                           } else {
//                             return Icon(
//                               Icons.favorite_border,
//                               color: DisLikeColor,
//                               size: buttonSize,
//                             );
//                           }
//                         },
//                         countBuilder: (int count, bool isLiked, String text) {
//                           var color = isLiked ? LikeColor : DisLikeColor;
//                           if (isLiked) {
//                             likeCount++;
//                           } else {
//                             likeCount--;
//                           }
//                           return Text(
//                             likeCount.toString(),
//                             style: TextStyle(
//                               color: color,
//                             ),
//                           );
//                         },
//                         likeCountPadding: EdgeInsets.only(left: 15.0),
//                         likeCountAnimationType: LikeCountAnimationType.all,
//                         onTap: onLikeButtonTapped,
//                       ),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                     child: Text('Next',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold)),
//                     onPressed: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (BuildContext context) => HomeScreen(),
//                         ))),
//               ],
//             )));
//   }

//   Future<bool> onLikeButtonTapped(bool isLiked) async {
//     return !isLiked;
//   }
// }
