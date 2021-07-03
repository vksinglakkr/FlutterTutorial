//lib\API\SimpleMethod\Que12String.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;

class Que12 extends StatefulWidget {
  @override
  _Que12State createState() => _Que12State();
}

class _Que12State extends State<Que12> {
  final String url1 =
      "https://thegrowingdeveloper.org/coding-blog/flutter-api-integration-learn-to-fetch-data-from-internet";
  final String video1 =
      "MEqUx3_KrFo"; // best video for Que12 timing 8:00 i.e. of the growing developers

  String strResponse;

  Future fetchData() async {
    http.Response response;
    response = await http
        .get('http://thegrowingdeveloper.org/apiview?id=1&type=text/html');
    if (response.statusCode == 200) {
      setState(() {
        strResponse = response
            .body; //Note: being String no need to convert using json.decode
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
      body: strResponse == null
          ? Center(child: CircularProgressIndicator())
          : Text(
              strResponse.toString(),
              style: TextStyle(fontSize: 30),
            ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
