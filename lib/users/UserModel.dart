class UserModel {
  String name;
  String email;
  int age;

  UserModel({required this.name, required this.email, required this.age});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      age: json['age'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'age': age};
  }
}
