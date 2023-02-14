import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AuthRepository {
  static Future<dynamic> login(String url, String email) async {
    FormData formData = FormData.fromMap({
      "email": email,
    });
    Dio dio = Dio();
    final response = await dio.post(url, data: formData);

    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      return jsonDecode(response.data);
    }
  }

  static Future<dynamic> daftar(
    String url,
    String email,
    String phone,
    String nama_lengkap,
  ) async {
    FormData formData = FormData.fromMap({
      "email": email,
      "phone": phone,
      "nama_lengkap": nama_lengkap,
    });
    Dio dio = Dio();
    final Response = await dio.post(url, data: formData);

    if (Response.statusCode == 200) {
      return jsonDecode(Response.data);
    } else {
      return jsonDecode(Response.data);
    }
  }
}
