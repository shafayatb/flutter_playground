import 'package:flutter/material.dart';

void main() async {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
              body: Center(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      left: 20,
                      bottom: 20,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              )
          )
      );
  }
}

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
            Container(
              width: 100,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.blueAccent,
            )
          ],
        ),
        Container(
          width: 200,
          height: 150,
          color: Colors.greenAccent,
        )
      ],
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
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          shape: BoxShape.circle
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(fontSize: 40, color: Colors.amber),
        ),
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

