import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zilaparishad/Desktop/Login/home.dart';
import 'package:zilaparishad/Desktop/Page1/Page1Home.dart';



void main() {
  
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
          primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.poppins().fontFamily),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginHome(),
      
      },
    );
  }
}