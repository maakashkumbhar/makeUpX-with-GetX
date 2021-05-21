import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:makeupshop/models/makeupModel.dart';
import 'package:makeupshop/strings.dart';

class ApiService {
  static final _client = http.Client();

  static Future<List<Products>> fetchProducts() async {
    var response =
        await _client.get(Uri.parse(ApiEndpoints().makeupApiEndpoint));

    try {
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);
        return ProductsFromJson(jsonString);
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
