import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2111 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Others/General/TODO.jpeg";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("// TODO?")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
          child: Text(
              "Suppose our programme is very lengthy. We have to make the changes at many places. We can make the entry of comments at each place just like this \n //TODO have to insert a padding here. Similarly at other places. When we write // TODO then it will take them as info lines shown them differently.")),
    );
  }
}

class Nextpage extends StatelessWidget {
  final String name;
  const Nextpage({key, @required this.name});
//  const Nextpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: WidgetAppBar("Next page")),
        body: Container(child: Text("Welcome to next page $name")));
  }
}

class Nextpage1 extends StatelessWidget {
  final String name;
  const Nextpage1({key, this.name});
//  const Nextpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: WidgetAppBar("Next page")),
        body: Container(child: Text("Welcome to next page $name")));
  }
}

class Nextpage2 extends StatelessWidget {
  //final String? name;
  //const Nextpage2({key, this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: WidgetAppBar("Next page")),
        body: Container(
            child: Text(
                "For this first we have to set the SDK version in pubspec.yaml i.e. sdk: '>=2.12.0 <3.0.0' but when we set it, other dart files start giving error of null.")));
  }
}

class Nextpage3 extends StatelessWidget {
//  final String name;
//  const Nextpage({key, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: WidgetAppBar("Next page")),
        body: Container(
            child: Text("It will show the error while compile the apk")));
  }
}
