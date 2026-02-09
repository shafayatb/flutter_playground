import 'package:flutter/material.dart';
import 'package:flutter_playground/users/UserModel.dart';
import 'package:flutter_playground/users/UsersRepository.dart';
import 'package:flutter_playground/users/ui/create_user_dialog.dart';
import 'package:flutter_playground/users/ui/user_item.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  UsersRepository usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User App'),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CreateUserDialog(
                    onSubmit: (UserModel user) async {
                      await usersRepository.createUser(user);
                      setState(() {

                      });
                    },
                  );
                },
              );
            },
            icon: Icon(Icons.add),
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder(
        future: usersRepository.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                UserModel user = snapshot.data![index];
                return UserItem(userModel: user);
              },
              itemCount: snapshot.data!.length,
            );
          }
          return Center(child: Text("${snapshot.error}"));
        },
      ),
    );
  }
}
