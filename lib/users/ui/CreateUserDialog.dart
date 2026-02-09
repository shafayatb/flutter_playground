import 'package:flutter/material.dart';
import 'package:flutter_playground/users/UserModel.dart';

class CreateUserDialog extends StatelessWidget {
  Function(UserModel user) onSubmit;

  CreateUserDialog({super.key, required this.onSubmit});

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();

  GlobalKey<FormState> _fromKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Create User"),
      content: Form(
        key: _fromKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid name';
                }
                return null;
              },
              controller: name,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Email Required';
                }

                if (!isValidEmail(value.trim())) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              controller: email,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Age is required';
                }

                int? number = int.tryParse(value);

                if (number == null || number <= 0) {
                  return 'Please enter a valid age';
                }

                return null;
              },
              keyboardType: TextInputType.number,
              controller: age,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_fromKey.currentState!.validate()) {
              UserModel user = UserModel(
                name: name.text,
                email: email.text,
                age: int.parse(age.text),
              );
              onSubmit.call(user);
              Navigator.of(context).pop();
            }
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}

bool isValidEmail(String email) {
  final emailRegex = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$');
  return emailRegex.hasMatch(email);
}
