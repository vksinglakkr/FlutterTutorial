import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que16a extends StatefulWidget {
  @override
  _Que16aState createState() => _Que16aState();
}

class _Que16aState extends State<Que16a> {
  Alignment _alignment = Alignment.center;
  Color _startColor = Colors.red;
  Color _startBoxShadowColor = Colors.brown;
  Color _startimageColor = Colors.pink;
  double sliderwidth = 10;
  double slidercircular = 10;
  double sliderspreadRadius = 10;
  double sliderblurRadius = 10;
  ImageRepeat imageRepeat = ImageRepeat.noRepeat;
  BoxFit _boxFit = BoxFit.scaleDown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,

          decoration: BoxDecoration(
            color: Color(0xff7c94b6),
            border: Border.all(
              color: _startColor,
              width: sliderwidth,
            ),
            borderRadius: BorderRadius.circular(slidercircular),
            boxShadow: [
              BoxShadow(
                spreadRadius: sliderspreadRadius,
                blurRadius: sliderblurRadius,
                color: _startBoxShadowColor,
                // offset: Offset(offsetxsliderval4, sliderval5),
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg"),
              repeat: imageRepeat,

              alignment: _alignment,
              fit: _boxFit,
              colorFilter: ColorFilter.mode(
                _startimageColor,
                BlendMode.multiply,
              ),
              //(value)
              // matchTextDirection: true,
              //centerSlice: Rect.fromCenter(
              // center: Offset(1, 1), width: 5, height: 100)
            ),
          ),
          //child: Text('Hello World'),
        ),
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }

  Widget getBottomBar() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Row(children: [
        //   Text("   shadow: (spreadRadius:,blurRadius:,color:)"),
        // ]),
        // Row(
        //   children: [
        //     CustSlider(
        //       onValueChange: (val) {
        //         setState(() {
        //           sliderspreadRadius = val;
        //         });
        //       },
        //       widthVal: 100,
        //       divide: 10,
        //       maxValue: 40,
        //       minValue: 10,
        //       propText: "   spreadRadius:",
        //       sliderVal: sliderspreadRadius,
        //     ),
        //     CustSlider(
        //       onValueChange: (val) {
        //         setState(() {
        //           sliderblurRadius = val;
        //         });
        //       },
        //       widthVal: 100,
        //       divide: 10,
        //       maxValue: 100,
        //       minValue: 1,
        //       propText: "   blurRadius:",
        //       sliderVal: sliderblurRadius,
        //     ),
        //   ],
        // ),
        // Row(children: [
        //   CustColor(
        //     propText: "   shadowColor:",
        //     startColor: _startBoxShadowColor,
        //     onValueChange: (value) {
        //       setState(() {
        //         _startBoxShadowColor = value;
        //       });
        //     },
        //   ),
        // ]),
        Row(children: [
          Text("   image: (alignment:,fit:,colorFilter:,)"),
        ]),
        Row(children: [
          CustAlignment(
              defaultAlignment: _alignment,
              propText: "   Alignment:",
              onValueChange: (value) {
                setState(() {
                  _alignment = value;
                });
              }),
          CustomValues(
            datatype: BoxFit.values,
            defaultVal: _boxFit,
            propText: "   fit:",
            onValueChanged: (dynamic newValue) {
              setState(() {
                _boxFit = newValue;
              });
            },
          ),
        ]),
        CustColor(
            propText: "   color",
            startColor: _startimageColor,
            onValueChange: (value) {
              setState(() {
                _startimageColor = value;
              });
            }),
        // Row(children: [
        //   Text("   decoration: (color:,border:(color:,width))"),
        // ]),
        // CustColor(
        //   propText: "   borderColor:",
        //   startColor: _startColor,
        //   onValueChange: (value) {
        //     setState(() {
        //       _startColor = value;
        //     });
        //   },
        // ),
        // Row(
        //   children: [
        //     CustSlider(
        //       onValueChange: (val) {
        //         setState(() {
        //           slidercircular = val;
        //         });
        //       },
        //       widthVal: 100,
        //       divide: 10,
        //       maxValue: 100,
        //       minValue: 1,
        //       propText: "   borderRadius:",
        //       sliderVal: slidercircular,
        //     ),

        // Row(children: [
        //   // CustBorderSides(
        //   //   // propText: propText,
        //   //   // startColor: startColor,
        //   //   // onValueChange: onValueChange

        //   //   propText: "   borderSide:",
        //   //   startBorder: _border,
        //   //   onValueChange: (value) {
        //   //     setState(() {
        //   //       _border = value;
        //   //     });
        //   //   },
        //   // ),
        // ])

        // CustSlider(
        //   onValueChange: (val) {
        //     setState(() {
        //       sliderwidth = val;
        //     });
        //   },
        //   widthVal: 100,
        //   divide: 10,
        //   maxValue: 30,
        //   minValue: 5,
        //   propText: "   width:",
        //   sliderVal: sliderwidth,
        // ),
      ],
    );
  }
}
