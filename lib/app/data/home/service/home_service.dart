import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:test_todo/app/data/home/model/checklist_add.dart';
import 'package:test_todo/app/data/home/model/checklist_model.dart';
import 'package:test_todo/app/data/login/model/login_model.dart';
import '../../../config/local_storage.dart';
import '../../../config/network.dart';


class HomeService {
  Future<ChecklistModel?> getChecklist() async {
    try {
      var response = await http.get(
        Uri.http(
          ConfigNetwork.defaultEndpoint,
          "/api/checklist",
        ),
        headers: {
          'Accept': '*/*',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ConfigLocalStorage().getToken()}',
        },
      );
      print('body ${response.body}');
      if (response.statusCode == 200) {
        final userData = response.body;
        //print(response.headers);
        return checklistModelFromJson(userData);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception('Failed to fetch user: $e');
    }
    return null;
  }

  Future<ChecklistAddModel?> addChecklist() async {
    try {
      var response = await http.post(
        Uri.http(
          ConfigNetwork.defaultEndpoint,
          "/api/checklist",
        ),
        body: jsonEncode({
          'name': 'Jordy Add Checklist',
        }),
        headers: {
          'Accept': '*/*',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ConfigLocalStorage().getToken()}',
        },
      );
      print('body ${response.body}');
      if (response.statusCode == 200) {
        final userData = response.body;
        //print(response.headers);
        return checklistAddModelFromJson(userData);
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
