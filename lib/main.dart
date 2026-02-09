import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'custom_widgets/first_screen.dart';

void main() async {
  http.Response res = await http.get(Uri.parse('https://dummyjson.com/posts'));

  final Map<String, dynamic> data = jsonDecode(res.body);

  final List postsJson = data['posts'];
  List<Post> posts = postsJson.map((element) {
    return Post.fromJson(element);
  }).toList();

  for (Post post in posts) {
    print(post.title);
  }

  runApp(MaterialApp(home: FirstScreen()));
}

class Post {
  int id;
  String title;
  String body;
  int views;
  int userId;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.views,
    required this.userId,
  });

  /// Create Post from JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      views: json['views'] as int,
      userId: json['userId'] as int,
    );
  }
}
