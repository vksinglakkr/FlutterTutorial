import 'package:flutter/material.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.message),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Wrap Column \nin Expnded",
                  style: Theme.of(context).textTheme.headline4),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                  " do eiusmod tempor incididunt ut labore et dolore magna "
                  "aliqua. Ut enim ad minim veniam, quis nostrud "
                  "exercitation ullamco laboris nisi ut aliquip ex ea "
                  "commodo consequat."),
            ],
          ),
        ],
      ),
    );
  }
}
