
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:test_todo/app/data/login/model/login_model.dart';

import '../../../config/network.dart';


class LoginNetwork {
  Future<LoginModel?> authUser(String email, String password) async {
    print('$email $password');
    try {
      var response = await http.post(
        Uri.http(
          ConfigNetwork.defaultEndpoint,
          "/api/login",
        ),
        headers: {
          'Accept': '*/*',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'password': password,
          'username': email,
        }),
      );
      print('body ${response.statusCode}');
      if (response.statusCode == 200) {
        final userData = response.body;
        //print(response.headers);
        return loginModelFromJson(userData);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception('Failed to fetch user: $e');
    }
    return null;
  }
}
