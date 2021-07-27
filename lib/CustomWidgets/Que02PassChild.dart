import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing ..... Widget \n(as child) as Parameter'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AppCard(
                child: Text(
                  "Passing Text Widget \n(as child) as Parameter",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Center(
              child: AppCard(
                child: Column(
                  children: [
                    Text(
                      "Passing Card Widget \n(as child) as Parameter",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: AppCard(
                boxShadowColor: Colors.blue,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      "Passing ListView Widget \n(as child) as Parameter",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: AppCard(
                borderStyle: Border.all(color: Colors.amber, width: 8),
                child: Wrap(
                  children: [
                    Text(
                      "Passing Wrap Widget \n(as child) as Parameter",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: AppCard(
                boxShadowColor: Colors.red,
                borderStyle: Border.all(color: Colors.amber, width: 8),
                child: Row(
                  children: [
                    Text(
                      "Passing Row Widget \n(as child) as Parameter",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppCard extends StatefulWidget {
  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;

  const AppCard(
      {Key key, @required this.child, this.borderStyle, this.boxShadowColor})
      : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.all(8.0),
          color: Colors.white,
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: widget.child,
              decoration: BoxDecoration(
                color: Colors.white,
                border: widget.borderStyle ??
                    Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: widget.boxShadowColor ?? Colors.black,
                    offset: Offset(8.0, 8.0),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
