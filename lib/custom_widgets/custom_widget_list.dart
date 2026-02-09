import 'package:flutter/material.dart';

class CustomWidgetList extends StatefulWidget {
  const CustomWidgetList({super.key});

  @override
  State<CustomWidgetList> createState() => _CustomWidgetListState();
}

class _CustomWidgetListState extends State<CustomWidgetList> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = List.generate(10, (int index) {
      return Container(
        padding: EdgeInsets.all(5),
        color: Colors.lightBlue,
        child: Text('Index: ${index + 1}'),
      );
    });
    /*
    [
      Container(
        width: 100,
        height: 100,
        color: Colors.deepPurple,
      ),
      Container(
        width: 80,
        height: 70,
        color: Colors.deepOrangeAccent,
      ),
      Container(
        width: 120,
        height: 130,
        color: Colors.blue,
      ),
    ];*/
    return Column(
      children: [
        Container(width: 80, height: 70, color: Colors.deepOrangeAccent),
        Container(width: 120, height: 130, color: Colors.blue),
        ...widgets,
      ],
    );
  }
}
