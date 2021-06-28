// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01d11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01d11> {
  final String image1 = "assets/help/TextField/Que01.png";
  final String video1 = "3zddqfn0dfc"; //final TextField border
  @override
  Widget build(BuildContext context) {
//    var _authenticationFormBloc;
//    var _passwordController;
//    var snapshot;
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("Borders: \nFocused/error/disabled..")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                          'Note: Default textField border takes all styles from theme.',
                          style: TextStyle(fontSize: 12)),
                      Text('Input border (none)'),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "border: InputBorder.none",
                        ),
                      ),
                      Text('borderSide: BorderSide.none'),
                      TextField(
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "borderSide: BorderSide.none",
                        ),
                      ),
                      Text('decoration:null (all space vanish)'),
                      TextField(
                        decoration: null,
                      ),
                      Text('InputDecoration.collapsed'),
                      TextField(
                          decoration: InputDecoration.collapsed(
                              hintText:
                                  "decoration: InputDecoration.collapsed")),
                      Text('Simple Border'),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "border: OutlineInputBorder()",
                        ),
                      ),
                      Text('borderRadius.circular/BorderRadius.all'),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText:
                                    "borderRadius: BorderRadius.circular(20)",
                                hintStyle: TextStyle(fontSize: 8),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                hintText:
                                    "borderRadius: BorderRadius.all(Radius.circular(10)",
                                hintStyle: TextStyle(fontSize: 6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text('focusedBorder'),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(width: 5, color: Colors.green)),
                          hintText: "focusedBorder: OutlineInputBorder(...)",
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        enabled: true, // to trigger disabledBorder
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF2F2F2),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(width: 4, color: Colors.red),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 4, color: Colors.orange),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 4, color: Colors.green),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                width: 1,
                              )),
                          errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide:
                                  BorderSide(width: 4, color: Colors.black)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 4, color: Colors.yellowAccent)),
                          hintText: "all type of border code incorporated here",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                        ),
                        obscureText: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
