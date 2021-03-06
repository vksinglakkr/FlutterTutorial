//Arun
import 'package:flutter/material.dart';

class Que02GridListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with n columns. If you change the scrollDirection to
      // horizontal, this would produce n rows.
      crossAxisCount: 3,

      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      childAspectRatio: 3.1,
      reverse: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(8),
      // Generate 100 Widgets that display their index in the List

      // List.generate(i,(index){return Widget}),
      children: List.generate(100, (index) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 3.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Text('Item $index'),
          ),
        );
      }),
    );
  }
}
