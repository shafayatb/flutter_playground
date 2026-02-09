import 'package:flutter/material.dart';

class CustomStackWidget extends StatefulWidget {
  const CustomStackWidget({super.key});

  @override
  State<CustomStackWidget> createState() => _CustomStackWidgetState();
}

class _CustomStackWidgetState extends State<CustomStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(width: 200, height: 200, color: Colors.green),
        Container(width: 100, height: 100, color: Colors.red),
        Positioned(
          bottom: 40,
          right: 40,
          child: Container(width: 20, height: 20, color: Colors.yellow),
        ),
      ],
    );
  }
}
