import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que20NullSafety11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Null Safety?")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Nextpage(name: "Vinod")));
                  },
                  child: Text("pass parameter with required")),
              //  Navigator.push(context,MaterialPageRoute(builder: (context) => Que13ExtractMathod()));
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nextpage1()));
                  },
                  child: Text("pass parameter without required")),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nextpage3()));
                  },
                  child:
                      Text("Forget to pass parameter while required is there")),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nextpage2()));
                  },
                  child: Text("New method to pass parameter with Null Safety")),
            ],
          ),
        ),
      ),
    );
  }
}

class Nextpage extends StatelessWidget {
  final String name;
  const Nextpage({key, @required this.name});
//  const Nextpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: WidgetAppBar("Next page")),
          body: Container(child: Text("Welcome to next page $name"))),
    );
  }
}

class Nextpage1 extends StatelessWidget {
  final String name;
  const Nextpage1({key, this.name});
//  const Nextpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: WidgetAppBar("Next page")),
            body: Container(child: Text("Welcome to next page $name"))));
  }
}

class Nextpage2 extends StatelessWidget {
  //final String? name;
  //const Nextpage2({key, this.name});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: WidgetAppBar("Next page")),
            body: Container(
                child: Text(
                    "For this first we have to set the SDK version in pubspec.yaml i.e. sdk: '>=2.12.0 <3.0.0' but when we set it, other dart files start giving error of null."))));
  }
}

class Nextpage3 extends StatelessWidget {
//  final String name;
//  const Nextpage({key, @required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: WidgetAppBar("Next page")),
          body: Container(
              child: Text("It will show the error while compile the apk"))),
    );
  }
}
