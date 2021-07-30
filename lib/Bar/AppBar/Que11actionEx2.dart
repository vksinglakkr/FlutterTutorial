import "package:flutter/material.dart";

class Que11ActionEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.amber,
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Wrap(
                      children: [
                        Text(
                          '''actions: [ 
      IconButton(
      icon: Icon(Icons.search), 
                 onPressed: (){})
      IconButton(
      icon: Icon(Icons.more_vert), 
                 onPressed: (){})
   ])''',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
