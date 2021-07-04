//lib\API\SimpleMethod\Que15List.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Que15 extends StatefulWidget {
  @override
  _Que15State createState() => _Que15State();
}

class _Que15State extends State<Que15> {
  final String image1 = "assets/help/API/response.jpg";
  List listResponse;

  Future fetchData() async {
    http.Response response;
    response = await http.get('https://jsonplaceholder.typicode.com/photos');
    if (response.statusCode == 200) {
      setState(() {
        listResponse = json.decode(response.body);
      });
    }
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
//                  Text(listResponse.toString()),
                  Image(
                      image: NetworkImage(
                          listResponse[0]['thumbnailUrl'].toString())),
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
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Image(
                            //     image: NetworkImage(listResponse[index]
                            //             ['thumbnailUrl']
                            //         .toString())),
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
