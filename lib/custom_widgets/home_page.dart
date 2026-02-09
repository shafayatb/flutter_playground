import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: Text('Home'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('On Home Page'),
                    ),
                  ],
                );
                /* AlertDialog(
                  title: Text('Warning'),
                  content: Text('Data Breach'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Destroy Data'),
                    ),
                  ],
                  icon: Icon(Icons.warning),
                );*/
              },
              barrierDismissible: false,
            );
          },
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
