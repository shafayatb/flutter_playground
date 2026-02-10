import 'package:flutter/material.dart';
import 'package:flutter_playground/network/firestore/repo/fire_user_repository.dart';
import 'package:flutter_playground/ui/fireuser/create_fire_user.dart';

class FireMainPage extends StatefulWidget {
  const FireMainPage({super.key});

  @override
  State<FireMainPage> createState() => _FireMainPageState();
}

class _FireMainPageState extends State<FireMainPage> {
  final FireUserRepository fireUserRepository = FireUserRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return CreateFireUserDialog(
                onSubmit: (name, age) async {
                  await fireUserRepository.createUser(name, age);
                },
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
