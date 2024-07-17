import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Login/home.dart';

class logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Logout'),
      content: Text('Are you sure you want to logout?'),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Logout'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginHome()),
            );
          },
        ),
      ],
    );
  }
}
