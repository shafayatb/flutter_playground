class FireUserModel {
  String id;
  String name;
  int age;

  FireUserModel({required this.id, required this.name, required this.age});

  factory FireUserModel.fromJson(Map<String, dynamic> json, String id) {
    return FireUserModel(id: id, name: json['name'], age: json['age']);
  }
}
