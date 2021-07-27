import 'package:flutter/material.dart';

class Que05Slider extends StatefulWidget {
  _Que05SliderState createState() => _Que05SliderState();
}

class _Que05SliderState extends State<Que05Slider> {
  double sliderValOri = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication")),
      body: Center(
        child: Container(width: sliderValOri, child: Text("Change Width?")),
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
            EditingPage(onChanged: (value) {
              setState(() {
                sliderValOri = value;
              });
            })
          ]),
    );
  }
}

//typedef StringValue = String Function(String);

// ignore: must_be_immutable
class EditingPage extends StatefulWidget {
  _EditingPageState createState() => _EditingPageState();
//  StringValue callback;
  final ValueChanged<double> onChanged;
  const EditingPage({Key key, this.onChanged}) : super(key: key);
}

class _EditingPageState extends State<EditingPage> {
  double sliderVal1 = 100;
//  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('fontSize:'),
        SizedBox(
          width: 100,
          child: Slider(
            value: sliderVal1,
            min: 10,
            max: 100,
            divisions: 10,
            label: sliderVal1.toStringAsFixed(0),
            onChanged: (value) {
              widget.onChanged(sliderVal1);
            },
          ),
        ),
      ],
    );
  }
}
