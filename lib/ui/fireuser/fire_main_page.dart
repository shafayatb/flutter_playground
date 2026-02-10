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
      body: StreamBuilder(
        stream: fireUserRepository.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.active) {
            var users = snapshot.data ?? [];
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${users[index].name}'),
                  subtitle: Text('${users[index].age} years old'),
                );
              },
              itemCount: users.length,
            );
          }
          return Center(child: Text('No Users Yet'));
        },
      ),
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
