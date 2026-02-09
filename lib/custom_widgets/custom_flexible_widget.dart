import 'package:flutter/material.dart';

class CustomFlexibleWidget extends StatefulWidget {
  const CustomFlexibleWidget({super.key});

  @override
  State<CustomFlexibleWidget> createState() => _CustomFlexibleWidgetState();
}

class _CustomFlexibleWidgetState extends State<CustomFlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(child: Container(color: Colors.deepOrange)),
          Flexible(child: Container(color: Colors.deepPurpleAccent)),
          Flexible(child: Container(height: 100, color: Colors.redAccent)),
        ],
      ),
    );
  }
}
