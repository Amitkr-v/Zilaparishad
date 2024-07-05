import 'package:excel/excel.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Text(
            '1st page',
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
