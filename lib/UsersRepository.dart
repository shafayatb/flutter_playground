import 'dart:convert';

import 'package:flutter_playground/UserModel.dart';
import 'package:http/http.dart' as http;

class UsersRepository {
  Future<List<UserModel>> getUsers() async {
    http.Response res = await http.get(
      Uri.parse('https://69896944c04d974bc69f1fbd.mockapi.io/api/v1/users'),
    );

    if (res.statusCode != 200) {
      return [];
    }

    return (res.body as List).map((element) {
      return UserModel.fromJson(element);
    }).toList();
  }

  Future<void> createUser(UserModel user) async {
    String userJson = jsonEncode(user.toJson());
    await http.post(
      Uri.parse('https://69896944c04d974bc69f1fbd.mockapi.io/api/v1/users'),
      body: userJson
    );
  }
}
