//lib\API\SimpleMethod\Que19Local.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que19Local extends StatefulWidget {
  @override
  _Que19LocalState createState() => _Que19LocalState();
}

class _Que19LocalState extends State<Que19Local> {
  List listResponse = [];
  void fetchData() async {
    String response;
    response = await rootBundle.loadString('assets/localJson/User.json');
    listResponse = jsonDecode(response);
    debugPrint(listResponse.toString());
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data from Internet'),
      ),
      body: listResponse == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //                Text(listResponse.toString()),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            listResponse[index]['name'] == null
                                ? Text("Loading..")
                                : Text(
                                    listResponse[index]['name'].toString(),
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                            listResponse[index]['number'] == null
                                ? Text("Loading..")
                                : Text(
                                    listResponse[index]['number'],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                            listResponse[index]['email'] == null
                                ? Text("Loading..")
                                : Text(
                                    listResponse[index]['email'],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                            Divider(height: 10, color: Colors.black),
                          ],
                        ),
                      );
                    },
                    itemCount: listResponse == null ? 0 : listResponse.length,
                  )
                ],
              ),
            ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
