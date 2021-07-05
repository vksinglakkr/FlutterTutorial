//lib\API\SimpleMethod\Que14List.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Que14 extends StatefulWidget {
  @override
  _Que14State createState() => _Que14State();
}

class _Que14State extends State<Que14> {
  final String image1 = "assets/help/API/response.jpg";
  final String url1 = "https://www.javatpoint.com/flutter-rest-api";
  final String video1 =
      "MEqUx3_KrFo"; // best video for Que14 i.e. of the growing developers

  List listResponse;

  Future fetchData() async {
    http.Response response;
    response = await http.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      setState(() {
        listResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    fetchData();
    debugPrint(listResponse.toString());
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
                  Text(listResponse.toString()),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              listResponse[index]['title'].toString(),
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              listResponse[index]['body'],
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
