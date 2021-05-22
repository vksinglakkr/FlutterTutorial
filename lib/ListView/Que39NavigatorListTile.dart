import 'package:flutter/material.dart';

class Que39 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder without List declaration',
              style: TextStyle(
                fontSize: 16,
              )),
        ),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('the List Item #$index'),
                  subtitle: Text('The SubTitle'),
                  leading: Icon(Icons.thumb_up),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    // builder: (context) => DetailsPage(index)));
                  },
                );
              },
            ),
            SizedBox(height: 5),
            Center(child: Text("ListView/Que39NavigatorListTile.dart"))
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
