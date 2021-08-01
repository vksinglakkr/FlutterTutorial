import 'package:flutter/material.dart';

// Adapted from offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/bottom_app_bar_demo.dart
class Que17SliverAppBarExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Que17SliverAppBarExampleState();
}

class _Que17SliverAppBarExampleState extends State<Que17SliverAppBarExample> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("FlexibleSpace title"),
              background: Image.asset(
                'assets/images/Kurukshetra.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.
          const SliverFillRemaining(
            child: Center(child: Text("NIC, Kurukshetra")),
          ),
        ],
      ),
      bottomNavigationBar: this._getBottomAppBar(),
    );
  }

  Widget _getBottomAppBar() {
    return BottomAppBar(
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('pinned'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._pinned = val;
                  });
                },
                value: this._pinned,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('snap'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._snap = val;
                    // **Snapping only applies when the app bar is floating.**
                    this._floating = this._floating || val;
                  });
                },
                value: this._snap,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Text('floating'),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    this._floating = val;
                    if (this._snap == true) {
                      if (this._floating != true) {
                        this._snap = false;
                      }
                    }
                  });
                },
                value: this._floating,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
