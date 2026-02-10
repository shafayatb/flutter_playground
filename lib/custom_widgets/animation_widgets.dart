import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key});

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double size = 100;
  Color color = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (size >= 200) {
            size = 100;
          } else {
            size += 50;
          }

          if (color == Colors.black38) {
            color = Colors.lightBlueAccent;
          } else {
            color = Colors.black38;
          }
        });
      },
      child: AnimatedContainer(
        height: size,
        width: size,
        color: color,
        duration: const Duration(milliseconds: 500),
        curve: Curves.elasticInOut,
      ),
    );
  }
}
