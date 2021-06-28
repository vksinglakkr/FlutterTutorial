import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment2/product.dart';
import 'package:http/http.dart' as http;

class HomePage2 extends StatefulWidget {
  HomePage2() : super();

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<Product> _product;
  bool _loading;
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getProducts().then((products) {
      setState(() {
        _product = products;
        _loading = false;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_loading ? 'Loading...' : 'Product')),
      body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: _product == null ? 0 : _product.length,
              itemBuilder: (context, index) {
                Product product = _product[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.price),
                );
              })),
    );
  }
}

class Services {
  static Future<List<Product>> getProducts() async {
    try {
      final response = await http.get(
          'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
      if (response.statusCode == 200) {
        final List<Product> var2 = productFromJson(response.body);
        return var2;
      } else {
        return throw Exception('Failed to load ...');
//        return null;
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
//      return null;
    }
  }
}
