import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _visible1 = true;
  var _visible2 = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Visibility Demo'),
          ),
          body: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  CustomContainer(txtData: 'Red', colorName: Colors.red),
                  SizedBox(
                    height: 8.0,
                  ),
                  Visibility(
                      visible: _visible1,
                      child: CustomContainer(
                          txtData: 'Orange', colorName: Colors.orange)),
                  SizedBox(
                    height: 8.0,
                  ),
                  Visibility(
                      visible: _visible2,
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      child: CustomContainer(
                          txtData: 'Blue', colorName: Colors.blue)),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                          child: Text('Show/Hide Orange'),
                          onPressed: () {
                            setState(() {
                              _visible1 = !_visible1;
                            });
                          }),
                      RaisedButton(
                          child: Text('Show/Hide Blue\n(Maintainsize)'),
                          onPressed: () {
                            setState(() {
                              _visible2 = !_visible2;
                            });
                          }),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
    this.txtData,
    this.colorName,
  }) : super(key: key);
  final String txtData;
  final Color colorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      color: colorName,
      child: Center(
        child: Text(
          txtData,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
