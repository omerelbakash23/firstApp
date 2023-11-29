// ignore_for_file: depend_on_referenced_packages

import 'package:apis/conts/const.dart';
import 'package:apis/model/product.dart';
import 'package:http/http.dart' as http;

class Productservice {
  static Future<List<Myproduct>> getProducts() async {
    var response = await http.get(Uri.parse('$baseurl/posts'));

    if (response.statusCode == 200) {
      var jsondate = response.body;
      return myproductFromJson(jsondate);
    } else {
      return throw Exception("Faild to load products");
    }
  }
}
