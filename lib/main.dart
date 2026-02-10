import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? username = await getUsername();
  print(username);
}

Future<void> saveUsername(String username) async {
  var prefs = await SharedPreferences.getInstance();
  await prefs.setString('user_name', username);
}

Future<String?> getUsername() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString('user_name');
}
