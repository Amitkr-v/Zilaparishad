import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool isDownloadHovered = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.08,
        horizontal: screenWidth * 0.05,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 10,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  decoration: BoxDecoration(),
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Color(0xFFff5700),
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Empowering ',
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Color(0xFF131842),
                            fontSize: 40,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Nalanda ',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              color: Color.fromARGB(
                                  255, 252, 110, 39), // Highlight color
                              fontSize: 40,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: 'Zila Parishad through transparent monitoring',
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Color(0xFF131842),
                            fontSize: 40,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'Monitor progress and ensure community development\n',
                      style: TextStyle(
                        color: Color(0xFF131842),
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 30),
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isDownloadHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isDownloadHovered = false;
                      });
                    },
                    child: GestureDetector(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () {
                            _showDownloadDialog(context);
                          },
                          child: Container(
                            width: 215,
                            decoration: BoxDecoration(
                              color: isDownloadHovered
                                  ? Color.fromARGB(255, 252, 110, 39)
                                  : Color(0xFFff5700),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Color.fromARGB(51, 237, 236, 236),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 15, 5, 15),
                                    child: Text(
                                      'Download app',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        letterSpacing: 0,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    margin: EdgeInsets.only(
                                        left: isDownloadHovered ? 10 : 0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Color(0xFFFFFFFF),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              '\n',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1b1d51),
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        TweenAnimationBuilder<int>(
                          tween: IntTween(begin: 0, end: 34),
                          duration: Duration(seconds: 2),
                          builder: (context, value, child) {
                            return Text(
                              '$value',
                              style: TextStyle(
                                fontFamily: 'ArchivoBlack',
                                fontSize: 60,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.none,
                                color: Color(0xFF1b1d51),
                              ),
                            );
                          },
                        ),
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text(
                              'Area',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1b1d51),
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                      child: Column(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Text(
                                '\n',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF1b1d51),
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                          TweenAnimationBuilder<int>(
                            tween: IntTween(begin: 0, end: 60),
                            duration: Duration(seconds: 2),
                            builder: (context, value, child) {
                              return Text(
                                '$value',
                                style: TextStyle(
                                  fontFamily: 'ArchivoBlack',
                                  fontSize: 60,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w100,
                                  decoration: TextDecoration.none,
                                  color: Color(0xFF1b1d51),
                                ),
                              );
                            },
                          ),
                          Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Text(
                                'Schemes\n\n',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF1b1d51),
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Flexible(
            flex: 9,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: screenWidth * 0.34,
                            child: ClipRRect(
                              borderRadius: BorderRadius.zero,
                              child: Image.asset(
                                'assets/images/Home.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  void _showDownloadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Lottie.asset(
                    'assets/images/dialog1.json', // Replace with your animation file path
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Thank you for choosing us!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
