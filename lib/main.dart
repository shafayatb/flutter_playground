import 'package:flutter/material.dart';

void main() async {
  runApp(MainWidget());
}

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
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
                  child: Container(
                    width: 150,
                    height: 100,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Image

/*Image.network(
"https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
),
Image.asset(
'assets/axe 1.png',
width: 200,
height: 200,
fit: BoxFit.contain,
),*/

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
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Text(text, style: TextStyle(fontSize: 40, color: Colors.amber)),
      ),
      onTap: () {
        print("Tapped");
        setState(() {
          text = 'Hello Bro';
        });
      },
    );
  }
}
