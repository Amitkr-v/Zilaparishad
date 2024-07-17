import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zilaparishad/Desktop/Login/Login.dart';
import 'package:zilaparishad/Desktop/Page1/Page1.dart';
import 'package:zilaparishad/Desktop/Page2/Page2.dart';
import 'package:zilaparishad/Desktop/Navbar/navbar.dart';
import 'package:zilaparishad/Mobile/mlogin.dart';

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
            top: true,
            child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => Mobilelayout(),
              desktop: (BuildContext context) => DesktopLayout(),
              tablet: (BuildContext context) => TabletLayout(),
            )),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenWidth,
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight,
                      child: loginPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Stack(children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: mloginPage(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class Mobilelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Stack(children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: mloginPage(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
