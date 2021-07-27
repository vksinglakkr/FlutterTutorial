import 'package:flutter/material.dart';

class Que06Color extends StatefulWidget {
  @override
  _Que06ColorState createState() => _Que06ColorState();
}

class _Que06ColorState extends State<Que06Color> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Choose color to be passed to next page'),
          MaterialButton(
              //button 1
              color: Colors.pink,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageTwo(
                      passedColor: Colors.pink,
                      passedColorName: 'Pink',
                    ),
                  ),
                );
              },
              child: Text('Pink')),
          MaterialButton(
            //button 2
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PageTwo(
                    passedColor: Colors.blueGrey,
                    passedColorName: 'Blue',
                  ),
                ),
              );
            },
            child: Text('Blue'),
          ),
        ],
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  final Color passedColor;
  final String passedColorName;
  const PageTwo({Key key, this.passedColor, this.passedColorName})
      : super(key: key);
//super is used to call the constructor of the base class which is the StatefulWidget here
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
//        automaticallyImplyLeading:
//            false, //optional: removes the default back arrow
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: widget.passedColor,
          ),
          Text('${widget.passedColorName} color was passed'),
//${} sign here prints the value of variable inside it.
          MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('<- Go back'))
        ],
      ),
    );
  }
}
