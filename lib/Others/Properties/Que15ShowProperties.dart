import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que15 extends StatefulWidget {
  //MainAxisSize _mainAxisSize = MainAxisSize.max;
  @override
  _Que15State createState() => _Que15State();
}

class _Que15State extends State<Que15> {
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic properties'),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            RandomContainer(
              child: ListTile(
                title: const Text('mainAxisAlignment:'),
                trailing: DropdownButton<MainAxisAlignment>(
                  value: _mainAxisAlignment,
                  onChanged: (MainAxisAlignment newVal) {
                    if (newVal != null) {
                      setState(() => this._mainAxisAlignment = newVal);
                    }
                  },
                  items: MainAxisAlignment.values
                      .map((MainAxisAlignment val) => DropdownMenuItem(
                            value: val,
                            child: Text(val
                                .toString()
                                .substring('MainAxisAlignment.'.length)),
                          ))
                      .toList(),
                ),
              ),
            ),
            Spacer(flex: 1),
            RandomContainer(
              child: ListTile(
                title: const Text(''),
                trailing: DropdownButton<CrossAxisAlignment>(
                  value: _crossAxisAlignment,
                  onChanged: (CrossAxisAlignment newVal) {
                    if (newVal != null) {
                      setState(() => this._crossAxisAlignment = newVal);
                    }
                  },
                  items: CrossAxisAlignment.values
                      .map((CrossAxisAlignment val) => DropdownMenuItem(
                            value: val,
                            child: Text(val.toString()),
//                                .substring('CrossAxisAlignment.'.length)),
                          ))
                      .toList(),
                ),
              ),
            ),
            Spacer(flex: 1),
            RandomContainer(
              child: ListTile(
                title: const Text('mainAxisSize:'),
                trailing: DropdownButton<MainAxisSize>(
                  value: _mainAxisSize,
                  onChanged: (MainAxisSize newVal) {
                    if (newVal != null) {
                      setState(() => this._mainAxisSize = newVal);
                    }
                  },
                  items: MainAxisSize.values
                      .map((MainAxisSize val) => DropdownMenuItem(
                            value: val,
                            child: Text(val.toString()),
//                                .substring('CrossAxisAlignment.'.length)),
                          ))
                      .toList(),
                ),
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
