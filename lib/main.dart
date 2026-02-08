import 'dart:math';

import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Playground'),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Serach');
            },
          ),
          IconButton(
            icon: Icon(Icons.edit_attributes_rounded),
            onPressed: () {
              print('Edit');
            },
          ),
        ],
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        elevation: 8,
        shadowColor: Colors.grey,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Text(
                'Fulter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ListTile(title: Text('Home'), trailing: Icon(Icons.home)),
          ],
        ),
      ),
      body: Center(child: CustomIconWidget()),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text("Secondo"),
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

class CustomFlexibleWidget extends StatefulWidget {
  const CustomFlexibleWidget({super.key});

  @override
  State<CustomFlexibleWidget> createState() => _CustomFlexibleWidgetState();
}

class _CustomFlexibleWidgetState extends State<CustomFlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(child: Container(color: Colors.deepOrange)),
          Flexible(child: Container(color: Colors.deepPurpleAccent)),
          Flexible(child: Container(height: 100, color: Colors.redAccent)),
        ],
      ),
    );
  }
}

class CustomExpandedWidget extends StatefulWidget {
  const CustomExpandedWidget({super.key});

  @override
  State<CustomExpandedWidget> createState() => _CustomExpandedWidgetState();
}

class _CustomExpandedWidgetState extends State<CustomExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 1, child: Container(color: Colors.deepOrange)),
          Expanded(flex: 2, child: Container(color: Colors.deepPurpleAccent)),
          Expanded(flex: 3, child: Container(color: Colors.redAccent)),
        ],
      ),
    );
  }
}

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

class CustomEditText extends StatefulWidget {
  const CustomEditText({super.key});

  @override
  State<CustomEditText> createState() => _CustomEditTextState();
}

class _CustomEditTextState extends State<CustomEditText> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: Container(width: 150, height: 100, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}

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
