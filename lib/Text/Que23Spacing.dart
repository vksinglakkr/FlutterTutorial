//  \lib/Align\Que03Properties.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que23Spacing extends StatefulWidget {
  @override
  _Que23SpacingState createState() => _Que23SpacingState();
}

class _Que23SpacingState extends State<Que23Spacing> {
  double sliderVal1 = 0;
  double sliderVal2 = 0;
  double sliderVal3 = 0.3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("fontWeight, fontSize, \nfontStyle")),
        body: Center(
          child: Column(
            children: [
              Spacer(flex: 1),
              Text(
                  "style: TextStyle(\nlineSpacing:${sliderVal1.toStringAsFixed(0)}\nwordSpacing:${sliderVal2.toStringAsFixed(0)}\nheight:${sliderVal3.toStringAsFixed(0)})"),
              Container(
                color: Colors.grey.shade300,
                height: 260,
                width: 325,
                child: Center(
                  child: Text(
                    "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar.",
                    style: TextStyle(
                      letterSpacing: sliderVal1,
                      wordSpacing: sliderVal2,
                      height: sliderVal3,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('letterSpacing:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal1,
                      min: -4,
                      max: 20,
                      divisions: 10,
                      label: sliderVal1.toStringAsFixed(0),
                      onChanged: (val) {
                        setState(() {
                          sliderVal1 = val;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('wordSpacing:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal2,
                      min: -10,
                      max: 30,
                      divisions: 7,
                      label: sliderVal2.toStringAsFixed(0),
                      onChanged: (val) {
                        setState(() {
                          sliderVal2 = val;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('height:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal3,
                      min: -1,
                      max: 3,
                      divisions: 30,
                      label: sliderVal3.toStringAsFixed(0),
                      onChanged: (val) {
                        setState(() {
                          sliderVal3 = val;
                        });
                      },
                    )),
              ],
            ),
          ]),
    );
  }
}
