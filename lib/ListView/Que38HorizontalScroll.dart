import 'package:flutter/material.dart';

class Que38 extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List<int> varDeclaration = [ , , , ]'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Card(
                      color: Colors.blue,
                      child: Container(
                        child: Center(
                            child: Text(
                          numbers[index].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 36.0),
                        )),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 30),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que38.png'),
            ),
          ),
          Center(child: Text("ListView/Que38HorizontalScroll.dart"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
