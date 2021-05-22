import 'package:flutter/material.dart';

class Que08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Disable Scroll - Demo'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                //  physics: ClampingScrollPhysics(),

                scrollDirection: Axis.horizontal,
                //scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    width: 130,
                    color: Colors.purple[600],
                    child: const Center(
                        child: Text(
                      'Item 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 130,
                    color: Colors.purple[500],
                    child: const Center(
                        child: Text(
                      'Item 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 130,
                    color: Colors.purple[400],
                    child: const Center(
                        child: Text(
                      'Item 3',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 130,
                    color: Colors.purple[300],
                    child: const Center(
                        child: Text(
                      'Item 4',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que08.png'),
              ),
            ),
            Center(child: Text("ListView/Que08ListViewDisableScroll.dart"))
          ],
        ),
        floatingActionButton: FloatingActionButton(
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
