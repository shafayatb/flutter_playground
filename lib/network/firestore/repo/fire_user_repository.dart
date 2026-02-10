import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_playground/network/firestore/fireuser/fire_user_model.dart';

class FireUserRepository {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future createUser(String name, int age) async {
    await _firebaseFirestore.collection('users').add({
      'name': name,
      'age': age,
    });
  }

  Stream<List<FireUserModel>> getUsers() {
    return _firebaseFirestore.collection('users').snapshots().map((query) {
      return query.docs.map((doc) {
        return FireUserModel.fromJson(doc.data(), doc.id);
      }).toList();
    });
  }
}
