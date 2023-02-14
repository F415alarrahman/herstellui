import 'dart:convert';

import 'package:dio/dio.dart';

class ProdukRepository {
  static Future<dynamic> login(String url, String email) async {
    Dio dio = Dio();
    final response = await dio.post(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      return jsonDecode(response.data);
    }
  }
}
