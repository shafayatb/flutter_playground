import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {
  const RowColumnWidget({super.key});

  @override
  State<RowColumnWidget> createState() => _RowColumnWidgetState();
}

class _RowColumnWidgetState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 150, color: Colors.red),
            Container(width: 100, height: 150, color: Colors.blueAccent),
          ],
        ),
        Container(width: 200, height: 150, color: Colors.greenAccent),
      ],
    );
  }
}
