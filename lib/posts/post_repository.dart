import 'dart:convert';

import 'package:http/http.dart' as http;

import 'post_model.dart';

class PostRepository {
  Future<List<Post>> fetchPosts() async {
    http.Response res = await http.get(
      Uri.parse('https://dummyjson.com/posts'),
    );

    final Map<String, dynamic> data = jsonDecode(res.body);

    final List postsJson = data['posts'];
    List<Post> posts = postsJson.map((element) {
      return Post.fromJson(element);
    }).toList();

    return posts;
  }
}
