import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class AnimatedCurves extends StatefulWidget {
  @override
  _AnimatedCurvesState createState() => _AnimatedCurvesState();
}

class _AnimatedCurvesState extends State<AnimatedCurves> {
  final String url1 =
      "https://medium.com/codechai/animating-using-animatedcontainer-flutter-widget-8356b5c1914c";
  final String video1 = "0NVLyjtWJqc";
  AnimationCurve dropDownValue;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("AnimatedContainer Demo")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                dropDownMenu(context),
                playAnimation(context),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
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
                  ? Text(
                      dropDownValue.description,
                    )
                  : Text("linear"),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          animatedContainer(context),
        ],
      ),
    );
  }

  Widget animatedContainer(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: AnimatedContainer(
          width: selected ? 260.0 : 200.0,
          height: selected ? 200.0 : 260.0,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve:
              dropDownValue != null ? dropDownValue.curveCubic : Curves.linear,
          child: Image.asset('assets/images/sea.jpg'),
        ),
      ),
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

  Widget playAnimation(BuildContext context) {
    return ElevatedButton(
      child: Text("Animate"),
      onPressed: () => setState(() {
        selected = !selected;
      }),
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
