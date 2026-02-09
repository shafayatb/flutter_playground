import 'package:flutter/material.dart';

import 'home_page.dart';
import 'profile_page.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<Widget> _pages = [HomePage(), ProfilePage()];

  int currentIndex = 0;

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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        //type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.indigo,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        selectedFontSize: 20,
        unselectedFontSize: 14,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 20),
      ),
      body: _pages[currentIndex],
    );
  }
}
