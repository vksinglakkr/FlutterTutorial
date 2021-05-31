import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  var _visible1 = true;
  var _visible2 = true;
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Visibility Demo'),
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.black38,
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.info),
                    color: Colors.black,
                    onPressed: launchURL,
                  ),
                  IconButton(
                      icon: const Icon(Icons.image),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppImage()),
                        );
                      }),
                  IconButton(
                      icon: const Icon(Icons.play_arrow),
                      color: Colors.black,
//                  onPressed: launchURL,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppVideo()),
                        );
                      }),
                ],
              ),
            ),
            Padding(
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
                        ElevatedButton(
                            child: Text('Show/Hide Orange'),
                            onPressed: () {
                              setState(() {
                                _visible1 = !_visible1;
                              });
                            }),
                        ElevatedButton(
                            child: Text('Show/Hide Blue\n(Maintainsize)'),
                            onPressed: () {
                              setState(() {
                                _visible2 = !_visible2;
                              });
                            }),
                      ],
                    ),
                  ],
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black45,
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
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
