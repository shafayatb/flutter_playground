import 'dart:math';

import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              int red = index * 77 % 256;
              int green = index * 66 % 256;
              int blue = index * 88 % 256;
              return Container(
                height: 200,
                color: Color.fromARGB(255, red, green, blue),
              );
            },
            shrinkWrap: true,
            primary: false,
            separatorBuilder: (BuildContext context, int index) {
              return Container(height: 20, color: Colors.grey);
            },
            itemCount: Random().nextInt(100),
          ),
        ],
      ),
    );

    /* ListView Builder
    ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        int red = index * 77 % 256;
        int green = index * 66 % 256;
        int blue = index * 88 % 256;
        return Container(
          height: 200,
          color: Color.fromARGB(255, red, green, blue),
        );
      },
      itemCount: Random().nextInt(100),
      shrinkWrap: true,
      primary: false,
    ),*/

    /* Basic ListView
      ListView(
      children: [
        Container(
          height: 400,
          color: Colors.blueAccent,
        ),
        Container(
          height: 400,
          color: Colors.amberAccent,
        ),
        Container(
          height: 400,
          color: Colors.indigo,
        ),
      ],
    );*/
  }
}
