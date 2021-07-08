//lib/API/models/Assignment2/HomePage.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/API/models/Assignment2/product.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePage2 extends StatefulWidget {
  HomePage2() : super();

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final String image1 = "assets/help/API/API_maybelline_json.png";
  List<Product> _convertedJsonData;
  Future<List<Product>> fetchData() async {
    try {
      http.Response response = await http.get(
          'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;
        return productFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((products) {
      setState(() {
        _convertedJsonData = products;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product')),
      body: _convertedJsonData == null
          ? Center(child: CircularProgressIndicator())
          : Container(
              color: Colors.white,
              child: ListView.builder(
                  itemCount: _convertedJsonData == null
                      ? 0
                      : _convertedJsonData.length,
                  itemBuilder: (context, index) {
                    Product product = _convertedJsonData[index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle: Text(product.price),
                    );
                  })),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
