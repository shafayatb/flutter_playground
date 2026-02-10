import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );
}

Future<void> saveUsername(String username) async {
  var prefs = await SharedPreferences.getInstance();
  await prefs.setString('user_name', username);
}

Future<String?> getUsername() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString('user_name');
}
