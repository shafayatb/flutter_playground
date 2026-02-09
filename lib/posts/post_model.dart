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
