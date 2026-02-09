import 'package:flutter/material.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 40,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        int red = index * 77 % 256;
        int green = index * 66 % 256;
        int blue = index * 88 % 256;
        return Container(
          height: 200,
          color: Color.fromARGB(255, red, green, blue),
        );
      },
      itemCount: 40,
    );

    /* Basic Grid view
      GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      mainAxisSpacing: 40,
      crossAxisSpacing: 20,
      children: [
        Container(color: Colors.blue),
        Container(color: Colors.redAccent),
        Container(color: Colors.amberAccent),
        Container(color: Colors.deepPurpleAccent),
        Container(color: Colors.deepOrangeAccent),
      ],
    );*/
  }
}
