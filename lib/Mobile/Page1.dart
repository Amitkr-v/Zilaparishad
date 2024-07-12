import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class mPage1 extends StatefulWidget {
  @override
  _mPage1State createState() => _mPage1State();
}

class _mPage1State extends State<mPage1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
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
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Empowering ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'Nalanda ',
                    style: GoogleFonts.poppins(
                        color: Color(0xFF5824ff), // Highlight color
                        fontSize: 25,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Zila Parishad through transparent monitoring',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
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
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2E2D2C),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 30),
            child: MouseRegion(
              child: GestureDetector(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: InkWell(
                    onTap: () {
                      _showDownloadDialog(context);
                    },
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 110, 39),
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
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 15, 5, 15),
                              child: Text(
                                'Download app',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  letterSpacing: 0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Color(0xFFFFFFFF),
                              size: 20,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Container(
                    width: screenWidth * 0.8,
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
                    fontSize: 20,
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
