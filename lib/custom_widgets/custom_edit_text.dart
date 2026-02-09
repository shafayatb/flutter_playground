import 'package:flutter/material.dart';

class CustomEditText extends StatefulWidget {
  const CustomEditText({super.key});

  @override
  State<CustomEditText> createState() => _CustomEditTextState();
}

class _CustomEditTextState extends State<CustomEditText> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
              hintText: "Hint",
              labelText: "Label",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 4),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print(_controller.text);
            },
            child: Container(width: 150, height: 100, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
