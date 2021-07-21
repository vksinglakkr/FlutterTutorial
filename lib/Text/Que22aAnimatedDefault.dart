import 'package:flutter/material.dart';

class Que22a extends StatefulWidget {
  _Que22aState createState() => _Que22aState();
}

class _Que22aState extends State<Que22a> {
  bool isSelected = false;
  double sliderVal1 = 180;
  AnimationCurve dropDownValue;
  FontWeight _fontWeight = FontWeight.w900;
  FontStyle _fontStyle = FontStyle.normal;
  final List<String> _fontFamily = <String>["Roboto", "Qahiri", "Pacifico"];
  int _currentFontIndex = 0;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedDefaultTextStyle"),
      ),
      body: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedDefaultTextStyle(
                  curve: dropDownValue != null
                      ? dropDownValue.curveCubic
                      : Curves.linear,
                  style: isSelected
                      ? TextStyle(
//                          fontSize: 50,
                          color: Colors.red,
//                          fontWeight: FontWeight.bold
                        )
                      : TextStyle(
//                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w100),
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    "NIC",
                    style: TextStyle(
                      fontSize: sliderVal1,
                      fontWeight: _fontWeight,
                      fontStyle: _fontStyle,
                      fontFamily: _fontFamily[_currentFontIndex],
                    ),
                  ),
                ),
                TextButton(
                  child: Text("Click me!"),
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                      _count = _count + 1;
                      _count < 39 ? _count += 1 : _count = 0;
                      dropDownValue = curveOptions[_count];
                    });
                  },
                ),
                Spacer(flex: 1),
                Column(
                  children: <Widget>[
                    dropDownValue != null
                        ? Text(
                            dropDownValue.curveCubic.toString(),
                          )
                        : Text(Curves.linear.toString()),
                    SizedBox(
                      height: 8,
                    ),
                    dropDownValue != null
                        ? Text(dropDownValue.description,
                            style: TextStyle(fontSize: 10))
                        : Text("linear"),
                  ],
                ),
              ]),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ListTile(
              title: const Text('fontWeight:'),
              trailing: DropdownButton<FontWeight>(
                value: _fontWeight,
                onChanged: (FontWeight newVal) {
                  if (newVal != null) {
                    setState(() => _fontWeight = newVal);
                  }
                },
                items: FontWeight.values
                    .map((FontWeight val) => DropdownMenuItem(
                          value: val,
                          child: Text(val.toString()
//                              .substring('WrapAlignment.'.length)
                              ),
                        ))
                    .toList(),
              ),
            ),
//             ListTile(
//               title: const Text('fontStyle:'),
//               trailing: DropdownButton<FontStyle>(
//                 value: _fontStyle,
//                 onChanged: (FontStyle newVal) {
//                   if (newVal != null) {
//                     setState(() => _fontStyle = newVal);
//                   }
//                 },
//                 items: FontStyle.values
//                     .map((FontStyle val) => DropdownMenuItem(
//                           value: val,
//                           child: Text(val.toString()
// //                              .substring('WrapAlignment.'.length)
//                               ),
//                         ))
//                     .toList(),
//               ),
//             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('    fontSize:'),
                SizedBox(
                    width: 250,
                    child: Slider(
                      value: sliderVal1,
                      min: 6,
                      max: 200,
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("    fontFamily:"),
            //     Container(
            //       child: DropdownButton(
            //         value: _currentFontIndex,
            //         items: <DropdownMenuItem>[
            //           DropdownMenuItem(
            //             value: 0,
            //             child: Text(_fontFamily[0]),
            //           ),
            //           DropdownMenuItem(
            //             value: 1,
            //             child: Text(_fontFamily[1]),
            //           ),
            //           DropdownMenuItem(
            //             value: 2,
            //             child: Text(_fontFamily[2]),
            //           ),
            //         ],
            //         onChanged: (value) {
            //           setState(() {
            //             _currentFontIndex = value;
            //           });
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            dropDownMenu(context),
          ]),
    );
  }

  Widget dropDownMenu(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      child: DropdownButton<AnimationCurve>(
        value: dropDownValue == null ? curveOptions[0] : dropDownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.blueAccent),
        underline: Container(
          height: 2,
          color: Colors.blue,
        ),
        onChanged: (AnimationCurve newValue) {
          setState(() {
            dropDownValue = newValue;
          });
        },
        items: curveOptions
            .map<DropdownMenuItem<AnimationCurve>>((AnimationCurve value) {
          return DropdownMenuItem<AnimationCurve>(
            value: value,
            child: Text(value.curveName),
          );
        }).toList(),
      ),
    );
  }
}

List<AnimationCurve> curveOptions = [
  AnimationCurve(Curves.linear, "linear", "A linear animation curve."),
  AnimationCurve(
      Curves.decelerate,
      "decelerate",
      "A curve where the rate of change starts out quickly and then decelerates. "
          "Upside-down `f(t) = t²` parabola."),
  AnimationCurve(
      Curves.fastLinearToSlowEaseIn,
      "fastLinearToSlowEaseIn",
      "A curve that is very steep and linear at the beginning, "
          "but quickly flattens out and very slowly eases in."),
  AnimationCurve(Curves.ease, "ease",
      "A cubic animation curve that speeds up quickly and ends slowly."),
  AnimationCurve(Curves.easeIn, "easeIn",
      "A cubic animation curve that starts slowly and ends quickly."),
  AnimationCurve(Curves.easeInToLinear, "easeInToLinear",
      "A cubic animation curve that starts starts slowly and ends linearly."),
  AnimationCurve(Curves.easeInSine, "easeInSine",
      "A cubic animation curve that starts slowly and ends quickly."),
  AnimationCurve(Curves.easeOutSine, "easeOutSine",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutSine, "easeInOutSine",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(
      Curves.easeInQuad,
      "easeInQuad",
      "A cubic animation curve that starts slowly and ends quickly. "
          "Based on a quadratic equation where `f(t) = t²`"),
  AnimationCurve(Curves.easeOutQuad, "easeOutQuad",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutQuad, "easeInOutQuad",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(
      Curves.easeInCubic,
      "easeInCubic",
      "A cubic animation curve that starts "
          "slowly and ends quickly. This curve is based on a cubic equation where `f(t) = t³`."),
  AnimationCurve(Curves.easeOutCubic, "easeOutCubic",
      " A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutCubic, "easeInOutCubic",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(
      Curves.easeInQuart,
      "easeInQuart",
      "A cubic animation curve that starts slowly and ends quickly. "
          "This curve is based on a quartic equation where `f(t) = t⁴`."),
  AnimationCurve(Curves.easeOutQuart, "easeOutQuart",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutQuart, "easeInOutQuart",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(
      Curves.easeInQuint,
      "easeInQuint",
      "A cubic animation curve that starts slowly and ends quickly. "
          "This curve is based on a quintic equation where `f(t) = t⁵`"),
  AnimationCurve(Curves.easeOutQuint, "easeOutQuint",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutQuart, "easeInOutQuart",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(
      Curves.easeInExpo,
      "easeInExpo",
      "A cubic animation curve that starts slowly and ends quickly. "
          "This curve is based on an exponential equation where `f(t) = 2¹⁰⁽ᵗ⁻¹⁾`."),
  AnimationCurve(Curves.easeOutExpo, "easeOutExpo",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutExpo, "easeInOutExpo",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(
      Curves.easeInCirc,
      "easeInCirc",
      "A cubic animation curve that starts slowly and ends quickly. "
          "This curve is effectively the bottom-right quarter of a circle."),
  AnimationCurve(Curves.easeOutCirc, "easeOutCirc",
      "A cubic animation curve that starts quickly and ends slowly. This curve is effectively the top-left quarter of a circle."),
  AnimationCurve(Curves.easeInOutCirc, "easeInOutCirc",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(Curves.easeInBack, "easeInBack",
      "A cubic animation curve that starts slowly and ends quickly."),
  AnimationCurve(Curves.easeOutBack, "easeOutBack",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.easeInOutBack, "easeInOutBack",
      "A cubic animation curve that starts slowly, speeds up, and then ends slowly."),
  AnimationCurve(Curves.easeInOut, "easeInOut",
      "A cubic animation curve that starts quickly and ends slowly."),
  AnimationCurve(Curves.linearToEaseOut, "linearToEaseOut",
      "A cubic animation curve that starts linearly and ends slowly."),
  AnimationCurve(Curves.fastOutSlowIn, "fastOutSlowIn",
      "A curve that starts quickly and eases into its final position."),
  AnimationCurve(
      Curves.slowMiddle,
      "slowMiddle",
      "A cubic animation curve that starts quickly, slows down, "
          "and then ends quickly."),
  AnimationCurve(Curves.bounceIn, "bounceIn",
      "An oscillating curve that grows in magnitude."),
  AnimationCurve(Curves.bounceOut, "bounceOut",
      "An oscillating curve that first grows and then shrink in magnitude."),
  AnimationCurve(Curves.bounceInOut, "bounceInOut",
      "An oscillating curve that first grows and then shrink in magnitude."),
  AnimationCurve(Curves.elasticIn, "elasticeIn",
      "An oscillating curve that grows in magnitude while overshooting its bounds."),
  AnimationCurve(Curves.elasticOut, "elasticOut",
      "An oscillating curve that shrinks in magnitude while overshooting its bounds."),
  AnimationCurve(Curves.elasticInOut, "elasticInOut",
      "An oscillating curve that grows and then shrinks in magnitude while overshooting its bounds."),
];

class AnimationCurve {
  Curve curveCubic;
  String curveName;
  String description;

  AnimationCurve(Curve cubic, String name, String desc) {
    this.curveCubic = cubic;
    this.curveName = name;
    this.description = desc;
  }
}
