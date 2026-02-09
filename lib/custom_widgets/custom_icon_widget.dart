import 'package:flutter/material.dart';

class CustomIconWidget extends StatefulWidget {
  const CustomIconWidget({super.key});

  @override
  State<CustomIconWidget> createState() => _CustomIconWidgetState();
}

class _CustomIconWidgetState extends State<CustomIconWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Icon(Icons.upcoming, size: 200, color: Colors.deepOrange),
    );
  }
}
