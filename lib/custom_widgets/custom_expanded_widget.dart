import 'package:flutter/material.dart';

class CustomExpandedWidget extends StatefulWidget {
  const CustomExpandedWidget({super.key});

  @override
  State<CustomExpandedWidget> createState() => _CustomExpandedWidgetState();
}

class _CustomExpandedWidgetState extends State<CustomExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 1, child: Container(color: Colors.deepOrange)),
          Expanded(flex: 2, child: Container(color: Colors.deepPurpleAccent)),
          Expanded(flex: 3, child: Container(color: Colors.redAccent)),
        ],
      ),
    );
  }
}
