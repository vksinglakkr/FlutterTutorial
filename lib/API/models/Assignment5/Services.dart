import 'package:flutter_tutorial/API/models/Assignment5/Peoples.dart';
import 'package:http/http.dart' as http;

class Services {
  static Future<String> fetchData() async {
    try {
      http.Response response = await http.get('https://swapi.dev/api/people');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;
        return peoplesFromJson(response.body) as String;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }
}
