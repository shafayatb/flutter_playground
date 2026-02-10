import 'package:flutter/material.dart';

class CreateFireUserDialog extends StatefulWidget {
  final Function(String name, int age) onSubmit;

  const CreateFireUserDialog({super.key, required this.onSubmit});

  @override
  State<CreateFireUserDialog> createState() => _CreateFireUserDialogState();
}

class _CreateFireUserDialogState extends State<CreateFireUserDialog> {
  TextEditingController name = TextEditingController();

  TextEditingController age = TextEditingController();

  GlobalKey<FormState> _fromKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Create Fire User"),
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
              widget.onSubmit.call(name.text, int.parse(age.text));
              Navigator.of(context).pop();
            }
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
