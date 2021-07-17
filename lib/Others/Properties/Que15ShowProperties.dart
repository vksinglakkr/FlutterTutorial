// /lib/Others/properties/Que15ShowProperties.dart
import 'package:flutter/material.dart';
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
  TextOverflow _textOverflow;
  Alignment _selectedAlignment;
  BoxFit _boxFit;
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

  final List<Alignment> _dropdownAlignment = [
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  Clip _clipBehavior = Clip.antiAlias;
  TabBarIndicatorSize _tabBarIndicatorSize = TabBarIndicatorSize.tab;
  double sliderVal = 5;
  final List<Color> _colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];
  final List<String> _colorToShow = <String>[
    "Colors.red",
    "Colors.blue",
    "Colors.green",
    "Colors.yellow",
    "Colors.orange"
  ];
  int _currentColorIndex = 0;
  WrapAlignment _wrapAlignment = WrapAlignment.start;
  WrapAlignment _wraprunAlignment = WrapAlignment.start;
  TextDirection _textDirection = TextDirection.ltr;
  Axis _axis = Axis.horizontal;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  double radiusVal = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic properties'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
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
          RandomContainer(
            child: ListTile(
              title: const Text('overflow:'),
              trailing: DropdownButton<TextOverflow>(
                value: _textOverflow,
                onChanged: (TextOverflow newVal) {
                  if (newVal != null) {
                    setState(() => this._textOverflow = newVal);
                  }
                },
                items: TextOverflow.values
                    .map((TextOverflow val) => DropdownMenuItem(
                          value: val,
                          child: Text(
                              val.toString().substring('TextOverflow.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('fit:'),
              trailing: DropdownButton<BoxFit>(
                value: _boxFit,
                onChanged: (BoxFit newVal) {
                  if (newVal != null) {
                    setState(() => _boxFit = newVal);
                    description();
                  }
                },
                items: BoxFit.values
                    .map((BoxFit val) => DropdownMenuItem(
                          value: val,
//                      child: Text(val.toString().substring('BoxFit.'.length)),
                          child: Text(val.toString()),
                        ))
                    .toList(),
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('alignment:'),
              trailing: DropdownButton(
                hint: Text('Select ...'),
                items: _dropdownAlignment
                    .map((element) => DropdownMenuItem(
                          child: Center(
                            child: Text(element.toString()),
                          ),
                          value: element,
                        ))
                    .toList(),
                onChanged: (Alignment value) {
                  setState(() {
                    _selectedAlignment = value;
                  });
                },
                isExpanded: false,
                value: _selectedAlignment,
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('clipBehavior:'),
              trailing: DropdownButton<Clip>(
                value: _clipBehavior,
                onChanged: (Clip newVal) {
                  if (newVal != null) {
                    setState(() => _clipBehavior = newVal);
                  }
                },
                items: Clip.values
                    .map((Clip val) => DropdownMenuItem(
                          value: val,
//                      child: Text(val.toString().substring('BoxFit.'.length)),
                          child: Text(val.toString()),
                        ))
                    .toList(),
              ),
            ),
          ),
//
          RandomContainer(
            child: ListTile(
              title: const Text('indicatorSize:'),
              trailing: DropdownButton<TabBarIndicatorSize>(
                value: _tabBarIndicatorSize,
                onChanged: (TabBarIndicatorSize newVal) {
                  if (newVal != null) {
                    setState(() => this._tabBarIndicatorSize = newVal);
                  }
                },
                items: TabBarIndicatorSize.values
                    .map((TabBarIndicatorSize val) => DropdownMenuItem(
                          value: val,
                          child: Text(val
                              .toString()
                              .substring('TabBarIndicatorSize.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('indicatorWeight:'),
              SizedBox(
                  width: 200,
                  child: Slider(
                    value: sliderVal,
                    min: 1,
                    max: 10,
                    onChanged: (val) {
                      setState(() {
                        sliderVal = val;
                      });
                    },
                  )),
            ],
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('alignment:'),
              trailing: DropdownButton<WrapAlignment>(
                value: _wrapAlignment,
                onChanged: (WrapAlignment newVal) {
                  if (newVal != null) {
                    setState(() => this._wrapAlignment = newVal);
                  }
                },
                items: WrapAlignment.values
                    .map((WrapAlignment val) => DropdownMenuItem(
                          value: val,
                          child: Text(val
                              .toString()
                              .substring('WrapAlignment.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('runAlignment:'),
              trailing: DropdownButton<WrapAlignment>(
                value: _wraprunAlignment,
                onChanged: (WrapAlignment newVal) {
                  if (newVal != null) {
                    setState(() => this._wraprunAlignment = newVal);
                  }
                },
                items: WrapAlignment.values
                    .map((WrapAlignment val) => DropdownMenuItem(
                          value: val,
                          child: Text(val
                              .toString()
                              .substring('WrapAlignment.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('textDirection:'),
              trailing: DropdownButton<TextDirection>(
                value: _textDirection,
                onChanged: (TextDirection newVal) {
                  if (newVal != null) {
                    setState(() => this._textDirection = newVal);
                  }
                },
                items: TextDirection.values
                    .map((TextDirection val) => DropdownMenuItem(
                          value: val,
                          child: Text(val
                              .toString()
                              .substring('TextDirection.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('direction:'),
              trailing: DropdownButton<Axis>(
                value: _axis,
                onChanged: (Axis newVal) {
                  if (newVal != null) {
                    setState(() => this._axis = newVal);
                  }
                },
                items: Axis.values
                    .map((Axis val) => DropdownMenuItem(
                          value: val,
                          child: Text(val.toString().substring('Axis.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          RandomContainer(
            child: ListTile(
              title: const Text('verticalDirection:'),
              trailing: DropdownButton<VerticalDirection>(
                value: _verticalDirection,
                onChanged: (VerticalDirection newVal) {
                  if (newVal != null) {
                    setState(() => this._verticalDirection = newVal);
                  }
                },
                items: VerticalDirection.values
                    .map((VerticalDirection val) => DropdownMenuItem(
                          value: val,
                          child: Text(val
                              .toString()
                              .substring('VerticalDirection.'.length)),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            color: _colors[_currentColorIndex],
            child: DropdownButton(
              value: _currentColorIndex,
              items: <DropdownMenuItem>[
                DropdownMenuItem(
                  value: 0,
                  child: Text(_colorToShow[0]),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text(_colorToShow[1]),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text(_colorToShow[2]),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text(_colorToShow[3]),
                ),
                DropdownMenuItem(
                  value: 4,
                  child: Text(_colorToShow[4]),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _currentColorIndex = value;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('indicator:'),
              SizedBox(
                  width: 200,
                  child: Slider(
                    value: radiusVal,
                    min: 1,
                    max: 50,
                    onChanged: (val) {
                      setState(() {
                        radiusVal = val;
                      });
                    },
                  )),
            ],
          ),
        ],
      ),
      // bottomNavigationBar:
      //     QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      // floatingActionButton: WidgetFab(),
    );
  }
}
