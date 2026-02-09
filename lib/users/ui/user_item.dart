import 'package:flutter/material.dart';
import 'package:flutter_playground/users/UserModel.dart';

class UserItem extends StatelessWidget {
  final UserModel userModel;

  const UserItem({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  userModel.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10),
                Text(
                  "${userModel.age} years old",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Text(
              userModel.email,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
