import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool isResourceHovered = false;
  bool isNewsHovered = false;
  bool isDownloadHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Zila parishad',
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(90, 0, 20, 0),
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isResourceHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isResourceHovered = false;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Resource',
                          style: TextStyle(
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                            color:
                                isResourceHovered ? Colors.blue : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: isResourceHovered
                                ? Colors.blue
                                : Color(0xFF57636C),
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isNewsHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isNewsHovered = false;
                      });
                    },
                    child: Text(
                      'News',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: isNewsHovered ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 80),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 40,
                    color: Color.fromARGB(255, 166, 166, 166),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Demo12',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF845EF2),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
