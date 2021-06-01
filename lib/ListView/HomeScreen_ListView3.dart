import 'package:flutter/material.dart';
import 'Que39NavigatorListTile.dart';
import 'Que10ListViewRadioButton.dart';
import 'Que40BuilderinsideBuilder.dart';
import 'Que41spreadOperator.dart';
import 'Que14ListViewSeperated.dart';
import 'Que14aListViewSeperated.dart';
import 'Que42RandomList.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - ListView(3)'),
      ),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Navigator (ListTile)'),
//                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que39()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Navigator (trailing - Icon)'),
//                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que10()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView.builder inside ListView.builder)'),
//                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que40()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('(...) spread operator)'),
//                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que41()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Map?'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView- addAutomaticKeepAlives:false'),
//                      color: Colors.red,
                      onPressed: () {
                        //    Navigator.push(context,
                        //        MaterialPageRoute(builder: (context) => Que()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text(
                          'ListView- physics: NeverScrollableScrollPhysics()'),
//                      color: Colors.red,
                      onPressed: () {
                        //    Navigator.push(context,
                        //        MaterialPageRoute(builder: (context) => Que()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView.Seperated'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que14a()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child:
                          Text('Divider using ThemeData & ListView.Seperated'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Reverse'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Set the url to make the list'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Multi Column list View'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Use of Inkwell instead of ListTile'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Add/Delete/Sort in ListView'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('List with Instances & key'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Generate Random List'),
//                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que42()));
                      }),
                ),
              ],
            ),
          ),
        ),
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
