import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:flutter/cupertino.dart';

final String url1 = "";
final String image1 = "";
final String video1 = "";

class QueBottom extends StatefulWidget {
  final String urlName, imageName, videoUrlId;
  const QueBottom({key, this.urlName, this.imageName, this.videoUrlId});
  @override
  _QueBottomState createState() => _QueBottomState();
}

class _QueBottomState extends State<QueBottom> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,

      //type: BottomNavigationBarType.shifting,
      iconSize: 20,
      selectedFontSize: 14,
      unselectedFontSize: 14,

      backgroundColor: Theme.of(context).primaryColor,
      items: [
        //  if (widget.urlName.length > 0)
        //    if (widget.imageName.length > 0)
        //      if (widget.videoUrlId.length > 0)
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: widget.urlName.length > 0 ? 'Info' : "Not Available",
          // icon: widget.urlName.length > 0
          //     ? Icon(Icons.info)
          //     : Icon(Icons.unpublished_rounded),
          // label: widget.urlName.length > 0 ? 'Info' : "",
          //       backgroundColor: Colors.white,
        ),
//           if (widget.imageName.length > 0)
//             if (widget.videoUrlId.length > 0)
        BottomNavigationBarItem(
          icon: const Icon(Icons.image),
          label: widget.imageName.length > 0 ? 'Image' : "Not Available",
        ),
//        if (widget.videoUrlId.length > 0)
        BottomNavigationBarItem(
          icon: const Icon(Icons.play_arrow),
          label: widget.videoUrlId.length > 0 ? 'Video' : "Not Available",
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) {
        setState(
          () {
            _selectedIndex = index;
            if (_selectedIndex == 0) {
              launch(widget.urlName);
//                  '');
            } else if (_selectedIndex == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyAppImage(image1: widget.imageName)));
            } else if (_selectedIndex == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyAppVideo(video1: widget.videoUrlId)));
            }
          },
        );
      },
    );
  }
}

class MyAppVideo extends StatelessWidget {
  final String video1;
  const MyAppVideo({key, this.video1});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("")),
        body: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: this.video1,
            flags: YoutubePlayerFlags(autoPlay: true, mute: false),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

class MyAppImage extends StatelessWidget {
  final String image1;
  const MyAppImage({key, this.image1});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("")),
        body: Center(child: Container(child: Image.asset(this.image1))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

class WidgetFab extends StatelessWidget {
  const WidgetFab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: "Go Back",
      onPressed: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.first_page),
    );
  }
}

class WidgetAppBar extends StatelessWidget {
  final String appBarTitle;
  const WidgetAppBar(this.appBarTitle);
  @override
  Widget build(BuildContext context) {
    return Text(
      appBarTitle,
      style: TextStyle(fontSize: 21),
      textAlign: TextAlign.left,
    );
  }
}

class WidgetCode extends StatelessWidget {
  final Widget a1;
  final String s1;
  WidgetCode(this.a1, this.s1);
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: a1,
      sourceFilePath: s1,
      codeLinkPrefix:
          "https://github.com/vksinglakkr/FlutterTutorial/blob/master/" + s1,
    );
  }
}

// class ButtonsCode extends StatelessWidget {
//   final Widget a1;
//   final String s1;
//   final String s2;
//   ButtonsCode(this.a1, this.s1, this.s2);
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.orange,
//       child: ListTile(
//           title: Text(s2),
//           subtitle: Text("Properties"),
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => WidgetCode(a1, s1)));
//           }),
//     );
//   }
// }
class ButtonsCode extends StatelessWidget {
  final Widget a1;
  final String s1;
  final String s2;
  ButtonsCode(this.a1, this.s1, this.s2);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          child: Text(s2),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WidgetCode(a1, s1)));
          }),
    );
  }
}

void showMessage(message) {
  // Fluttertoast.showToast(
  //     msg: "The entered text is:" + message,
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.BOTTOM,
  //     //   timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.black,
  //     textColor: Colors.white,
  //     fontSize: 16.0);
}

// ignore: must_be_immutable
class CustSlider extends StatelessWidget {
  double widthVal;
  double minValue;
  double maxValue;
  double sliderVal;
  String propText;
  int divide;
  Function(dynamic) onValueChange;
  CustSlider(
      {@required this.widthVal,
      @required this.maxValue,
      @required this.minValue,
      @required this.divide,
      @required this.propText,
      @required this.sliderVal,
      @required this.onValueChange});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propText),
        SizedBox(
          width: widthVal,
          child: Slider(
              label: sliderVal.toStringAsFixed(1),
              min: minValue,
              max: maxValue,
              divisions: divide,
              value: sliderVal == null || sliderVal < minValue
                  ? minValue
                  : sliderVal,
              onChanged: (value) {
                sliderVal = value;
                onValueChange(value);
              }),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomBool extends StatelessWidget {
  String propText;
  bool groupvalue;

  String fstText;
  String sndText;
  Function(bool) onValueChanged;
  CustomBool(
      {@required this.propText,
      @required this.groupvalue,
      @required this.onValueChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(propText),
        Row(
          children: <Widget>[
            Radio<bool>(
                value: true,
                groupValue: groupvalue,
                onChanged: (value) {
                  groupvalue = value;
                  onValueChanged(value);
                }),
            Text(fstText),
          ],
        ),
        Row(
          children: <Widget>[
            Radio<bool>(
                value: false,
                groupValue: groupvalue,
                onChanged: (bool value) {
                  groupvalue = value;
                  onValueChanged(value);
                }),
            Text(sndText),
          ],
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomValues extends StatelessWidget {
  Function(dynamic) onValueChanged;
  dynamic defaultVal;
  List<dynamic> datatype;
  String propText;

  CustomValues({
    @required this.datatype,
    @required this.defaultVal,
    @required this.propText,
    @required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propText),
        DropdownButton(
            value: defaultVal,
            onChanged: (value) {
              defaultVal = value;
              onValueChanged(value);
            },
            items: datatype
                .map((e) => DropdownMenuItem(
                      child: Text(e.toString()),
                      value: e,
                    ))
                .toList()),
      ],
    );
  }
}

// ignore: must_be_immutable
// class CustMainSizeAxis extends StatelessWidget {
//   Function(dynamic) onValueChanged;

//   List<dynamic> changevalue;
//   dynamic defultvalue;
//   String textpro;

//   CustMainSizeAxis({
//     @required this.changevalue,
//     @required this.defultvalue,
//     @required this.textpro,
//     @required this.onValueChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// ignore: must_be_immutable
class CustColor extends StatelessWidget {
  Function(dynamic) onValueChange;
  Color startColor;
  final String propText;
  CustColor(
      {@required this.propText,
      @required this.startColor,
      @required this.onValueChange});

  Map<String, MaterialColor> dropdownColor = {
    "Yellow": Colors.yellow,
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Grey": Colors.grey,
    "Pink": Colors.pink,
    "Green": Colors.green,
    "Orange": Colors.orange,
    "Purple": Colors.purple,
    "Brown": Colors.brown,
    "Cyan": Colors.cyan,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propText),
        DropdownButton(
            value: startColor,
            onChanged: (dynamic value) {
              startColor = value;
              onValueChange(value);
            },
            items: dropdownColor
                .map((key, value) => MapEntry(
                    key,
                    DropdownMenuItem(
                      child: Text("Colors." + key),
                      value: value,
                    )))
                .values
                .toList()),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustAlignment extends StatelessWidget {
  Function(dynamic) onValueChange;
  Alignment defaultAlignment;
  final String propText;
  CustAlignment(
      {@required this.propText,
      @required this.defaultAlignment,
      @required this.onValueChange});

  Map<String, Alignment> alignment = {
    "Center": Alignment.center,
    "BottomLeft": Alignment.bottomLeft,
    "BottomCenter": Alignment.bottomCenter,
    "BottomRight": Alignment.bottomRight,
    "TopLeft": Alignment.topLeft,
    "TopRight": Alignment.topRight,
    "TopCenter": Alignment.topCenter,
    "CenterLeft": Alignment.centerLeft,
    "CenterRight": Alignment.centerRight,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(propText),
        DropdownButton(
            value: defaultAlignment,
            onChanged: (dynamic value) {
              defaultAlignment = value;
              onValueChange(value);
            },
            items: alignment
                .map((key, value) => MapEntry(
                    key,
                    DropdownMenuItem(
                      child: Text("Alignment." + key),
                      value: value,
                    )))
                .values
                .toList()),
      ],
    );
  }
}

// Step 1
/*
             bottomNavigationBar: _getBottomBar(),
*/
// Step 2
/*

 Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ]),
    );
  }
Step 3
      double sliderVal =0;

      CustSlider(
            widthVal: 250,
            maxValue: 100,
            minValue: 10,
            divide: 10,
            propText: 'fontsize:',
            sliderVal: sliderVal1,
            onValueChange: (onChange) {
              setState(() {
                sliderVal1 = onChange;
              });
            }),

FontWeight _fontWeight = FontWeight.bold;
 CustomValues(
              datatype: FontWeight.values,
              defaultVal: _fontWeight,
              propText: 'fontWeight:',
              onValueChanged: (onValueChanged1) {
                setState(() {
                  _fontWeight = onValueChanged1;
                });
              }),

           Color selectColor = Colors.green;
           CustColor(
            protext: "color:",
            startColor: selectColor,
            onValueChange: (value) {
              setState(() {
                selectColor = value;
              });
            },
          )
*/
void showAlert(BuildContext context, String var1) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(var1),
          ));
}
