import 'dart:convert';

import 'package:ecommerce/models/prodect_model.dart';
import 'package:http/http.dart' as http;

class ApiData {
  Future<List<ProductModel>> getData() async {
    final List<ProductModel> data = [];
    http.Response response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    try {
      if (response.statusCode == 200) {
        final List<dynamic> apidata = await jsonDecode(response.body);

        // ignore: avoid_function_literals_in_foreach_calls
        apidata.forEach((element) async {
          data.add(ProductModel.fromJson(await element));
        });
      }
    // ignore: empty_catches
    } catch (e) {
    }
    return data;
  }
}
