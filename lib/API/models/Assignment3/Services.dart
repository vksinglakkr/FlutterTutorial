import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/API/models/Assignment3/album.dart';
// as far as fetching is concerned, it is same for all methods.
// Step 4
// Now Write code to convert the data into json format
// For decode/convert
// without models we use this return json.decode(response.body);
// as we are using models we have two options
// either return albumFromJson(response.body);
// or return Album.fromJson(jsonDecode(response.body)); // Alternate
// we can see the convert data using debugPrint(albumFromJson(response.body).toString());
//    debugPrint(albumFromJson(response.body).toString());

class Services {
  static Future<Album> fetchData() async {
    try {
      http.Response response =
          await http.get('https://jsonplaceholder.typicode.com/albums/1');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;
        return albumFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }
}
