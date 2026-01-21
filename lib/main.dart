import 'package:flutter/material.dart';

void main() async {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
              body: Center(child: CustomTextWidget())
          )
      );
  }
}

class CustomTextWidget extends StatefulWidget {
  const CustomTextWidget({super.key});

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {

  String text = 'Hello Mom';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: TextStyle(fontSize: 40, color: Colors.amber),
      ),
      onTap: (){
        print("Tapped");
        setState(() {
          text = 'Hello Bro';
        });
      },
    );
  }
}

