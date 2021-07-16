// /lib/Others/Wrap/Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter

class Que05 extends StatefulWidget {
  @override
  _Que05State createState() => _Que05State();
}

class _Que05State extends State<Que05> {
  BoxFit _boxFit = BoxFit.fill;
  String description1 =
      "fill: The child fills the target box by distorting the source’s aspect ratio.";
  description() {
    if (_boxFit.toString() == "BoxFit.cover") {
      description1 =
          "cover: The child is as small as possible while still covering the entire target box.";
    } else if (_boxFit.toString() == "BoxFit.contain") {
      description1 =
          "contain: As large as possible while still containing the source entirely within the target box.";
    } else if (_boxFit.toString() == "BoxFit.fill") {
      description1 =
          "fill: The child fills the target box by distorting the source’s aspect ratio.";
    } else if (_boxFit.toString() == "BoxFit.scaleDown") {
      description1 =
          "scaleDown: Align the source within the target box (by default, centering) and, if necessary, scale the source down to ensure that the source fits within the box.";
    } else if (_boxFit.toString() == "BoxFit.fitHeight") {
      description1 =
          "fitHeight: Make sure the full height of the source is shown, regardless of whether this means the source overflows the target box horizontally.";
    } else if (_boxFit.toString() == "BoxFit.fitWidth") {
      description1 =
          "fitWidth: Make sure the full width of the source is shown, regardless of whether this means the source overflows the target box vertically.";
    } else if (_boxFit.toString() == "BoxFit.none") {
      description1 =
          "none: Align the source within the target box (by default, centering) and discard any portions of the source that lie outside the box.";
    }
  }

  @override
  Widget build(BuildContext context) {
//    final _appbarButtons = _getBottomBar();
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("FittedBox\nBoxFit"),
        ),
        body: _buildBody(),
//        bottomNavigationBar: _appbarButtons,
//        floatingActionButton: WidgetFab(),
      ),
    );
  }

  Widget _buildBody() => Column(
        children: [
          Spacer(flex: 1),
          Text("fill"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 25,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,25)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 25,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(25,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
          Text("contain"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 25,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,25)\nSource(125,125)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 25,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(25,50)\nSource(125,125)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,50)\nSource(125,125)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
          Text("cover"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 25,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,25)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 25,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(25,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
          Text("fitWidth"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 25,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,25)\nSource(125,125)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 25,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(25,50)\nSource(125,125)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,50)\nSource(125,125)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
          Text("fitHeight"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 25,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,25)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 25,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(25,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
          // Spacer(flex: 1),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Center(
          //       child: Container(
          //         width: 50,
          //         height: 25,
          //         color: Colors.purple,
          //         child: FittedBox(
          //           fit: BoxFit.none,
          //           child: Container(
          //             width: 125,
          //             height: 125,
          //             decoration: BoxDecoration(
          //                 color: Colors.amber,
          //                 borderRadius: BorderRadius.circular(20)),
          //             alignment: Alignment.center,
          //             child: Text(
          //               'Target(50,25)\nSource(125,125)',
          //               style: TextStyle(fontSize: 8),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Spacer(flex: 1),
          //     Center(
          //       child: Container(
          //         width: 25,
          //         height: 50,
          //         color: Colors.purple,
          //         child: FittedBox(
          //           fit: BoxFit.none,
          //           child: Container(
          //             width: 125,
          //             height: 125,
          //             decoration: BoxDecoration(
          //                 color: Colors.amber,
          //                 borderRadius: BorderRadius.circular(20)),
          //             alignment: Alignment.center,
          //             child: Text(
          //               'Target(25,50)\nSource(125,125)',
          //               style: TextStyle(fontSize: 8),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Spacer(flex: 1),
          //     Center(
          //       child: Container(
          //         width: 50,
          //         height: 50,
          //         color: Colors.purple,
          //         child: FittedBox(
          //           fit: BoxFit.none,
          //           child: Container(
          //             width: 125,
          //             height: 125,
          //             decoration: BoxDecoration(
          //                 color: Colors.amber,
          //                 borderRadius: BorderRadius.circular(20)),
          //             alignment: Alignment.center,
          //             child: Text(
          //               'Target(50,50)\nSource(125,125)',
          //               style: TextStyle(fontSize: 8),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Text("scaleDown"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 25,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,25)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 25,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(25,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Target(50,50)\nSource(25,25)',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
//          Text("$description1", style: TextStyle(fontSize: 12)),
//          Spacer(flex: 1),
        ],
      );
}
//   Widget _getBottomBar() {
//     return Material(
//       color: Theme.of(context).primaryColorLight,
//       child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//         ListTile(
//           title: const Text('fit:'),
//           trailing: DropdownButton<BoxFit>(
//             value: _boxFit,
//             onChanged: (BoxFit newVal) {
//               if (newVal != null) {
//                 setState(() => _boxFit = newVal);
//                 description();
//                 debugPrint("$_boxFit");
//               }
//             },
//             items: BoxFit.values
//                 .map((BoxFit val) => DropdownMenuItem(
//                       value: val,
//                       child: Text(val.toString().substring('BoxFit.'.length)),
//                     ))
//                 .toList(),
//           ),
//         ),
//       ]),
//     );
//   }
// }
