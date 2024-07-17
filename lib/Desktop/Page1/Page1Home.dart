import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zilaparishad/Desktop/Page1/Page1.dart';
import 'package:zilaparishad/Desktop/Page2/Page2.dart';
import 'package:zilaparishad/Desktop/Page2/Page2test.dart';
import 'package:zilaparishad/Desktop/Navbar/navbar.dart';
import 'package:zilaparishad/Mobile/Page1.dart';
import 'package:zilaparishad/Mobile/Page2.dart';
import 'package:zilaparishad/Mobile/mnavbar.dart';

class Home extends StatelessWidget {
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
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 30, top: 50, end: 30),
                        child: Page1(),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        width: screenWidth,
                        child: Page2(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Navbar(),
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
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 30, top: 50, end: 30),
                      child: mPage1(),
                    ),
                     mPage2(),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
        mNavbar(),
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
                    mPage1(),

                   
                       mPage2(),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
        mNavbar(),
      ]),
    );
  }
}
