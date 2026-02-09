import 'package:flutter/material.dart';

import 'second_screen.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String buttonText = 'Press Me';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Oh that hit the spot");
        setState(() {
          buttonText = 'Oh Yaas';
        });
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext builderContext) {
              return SecondScreen();
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFDFB25D),
        foregroundColor: Color(0xFFB50853),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(width: 1, color: Colors.deepOrange),
        ),
      ),
      child: Text(buttonText),
    );
  }
}
