import 'package:flutter/material.dart';
import 'package:flutter_playground/users/UsersRepository.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  UsersRepository usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User App'),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder(
        future: usersRepository.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return Center(child: Text("${snapshot.data!.length} items"));
          }
          return Center(child: Text("${snapshot.error}"));
        },
      ),
    );
  }
}
