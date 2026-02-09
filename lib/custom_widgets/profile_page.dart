import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 500,
                  /*decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),*/
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Change Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                );
              },
              enableDrag: false,
              showDragHandle: true,
              backgroundColor: Colors.black38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
            );
          },
          child: const Text('More Profile Options'),
        ),
      ),
    );
  }
}
