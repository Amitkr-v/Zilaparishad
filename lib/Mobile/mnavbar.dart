import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Login/home.dart';
import 'package:zilaparishad/Desktop/Navbar/logout.dart';

class mNavbar extends StatefulWidget {
  @override
  _mNavbarState createState() => _mNavbarState();
}

class _mNavbarState extends State<mNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 10, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 6),
                  child: Container(
                    width: 30,
                    height: 30,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/zplogo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Zila parishad',
                    style: TextStyle(
                      fontSize: 20,
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
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => logout(),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.account_circle,
                        size: 40,
                        color: Color.fromARGB(255, 166, 166, 166),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 6),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome,',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Demo',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF845EF2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 5.0),
                                child: Icon(
                                  Icons.logout,
                                  size: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
