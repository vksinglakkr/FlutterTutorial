import 'package:flutter/material.dart';

class Que04 extends StatefulWidget {
  @override
  _Que04State createState() => _Que04State();
}

class _Que04State extends State<Que04> {
  List<Color> _colorList = [
    Colors.amber,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.purple
  ];
  int _selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(color: _colorList[_selectedColor]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 42),
              child: Text(
                "Change Color:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 32),
                // List.generate(i,(index){return Widget}),
                children: List.generate(
                  _colorList.length,
                  (index) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedColor = index;
                          });
                        },
                        child: colorBox(
                            _colorList[index], _selectedColor == index));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorBox(Color color, bool selected) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.fastLinearToSlowEaseIn,
      width: selected ? 40 : 32,
      height: selected ? 40 : 32,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 5),
          color: color),
    );
  }
}
