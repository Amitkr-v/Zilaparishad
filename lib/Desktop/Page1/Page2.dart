import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Trackscheme.dart';
import 'package:zilaparishad/Desktop/Searchbox.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Map<String, bool> _hoverStates = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Track Scheme',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                  fontSize: 35,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              search1(),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row1(context),
                  Row2(
                    context,
                    '1',
                    '15th F.C',
                    '2020-2021',
                    'Road to school',
                    'Completed',
                    '#CFFFD2',
                    _hoverStates['1'] ?? false,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    (isHovered) {
                      setState(() {
                        _hoverStates['1'] = isHovered;
                      });
                    },
                  ),
                  Row2(
                    context,
                    '2',
                    '6th S.F.C',
                    '2021-2022',
                    'Road to Watertanki',
                    'Inactive',
                    '#FFA6A6',
                    _hoverStates['2'] ?? false,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    (isHovered) {
                      setState(() {
                        _hoverStates['2'] = isHovered;
                      });
                    },
                  ),
                  Row2(
                    context,
                    '3',
                    '5th S.F.C',
                    '2017-2018',
                    'Watertanki to village',
                    'Completed',
                    '#CFFFD2',
                    _hoverStates['3'] ?? false,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    (isHovered) {
                      setState(() {
                        _hoverStates['3'] = isHovered;
                      });
                    },
                  ),
                  Row2(
                    context,
                    '4',
                    'SWA Vitt Poshif',
                    '2020-2021',
                    'Village to school',
                    'Inprogress',
                    '##FFF9D9',
                    _hoverStates['4'] ?? false,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    (isHovered) {
                      setState(() {
                        _hoverStates['4'] = isHovered;
                      });
                    },
                  ),
                  Row2(
                    context,
                    '5',
                    'Own resource',
                    '2020-2021',
                    'school to Rajgir',
                    'Completed',
                    '#CFFFD2',
                    _hoverStates['5'] ?? false,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    (isHovered) {
                      setState(() {
                        _hoverStates['5'] = isHovered;
                      });
                    },
                  ),
                  Row2(
                    context,
                    '6',
                    '16th F.C',
                    '2020-2021',
                    'Rajgir to watertanki',
                    'Inactive',
                    '#FFA6A6',
                    _hoverStates['6'] ?? false,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    (isHovered) {
                      setState(() {
                        _hoverStates['6'] = isHovered;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding Row1(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16.0, top: 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.06,
                height: 50,
                child: Text(
                  'Serial no.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFa5a6ac),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: 50,
                child: Text(
                  'Financial head',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFa5a6ac),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: 50,
                child: Text(
                  'Financial year',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFa5a6ac),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: 50,
                child: Text(
                  'Scheme name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFa5a6ac),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.08,
                height: 50,
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFa5a6ac),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding Row2(
    BuildContext context,
    String serial,
    String financial_head,
    String fin_year,
    String Scheme_name,
    String status,
    String colorString,
    bool isHovered,
    VoidCallback onTap,
    Function(bool) onHover,
  ) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          onEnter: (_) => onHover(true),
          onExit: (_) => onHover(false),
          child: Container(
            decoration: BoxDecoration(
              color: isHovered ? Color(0xFFECEFF1) : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.06,
                    height: 50,
                    child: Text(
                      serial,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: 50,
                    child: Text(
                      financial_head,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 50,
                    child: Text(
                      fin_year,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: 50,
                    child: Text(
                      Scheme_name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 1,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: 50,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _getColorFromHex(colorString),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              status,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Add FF for the opacity if it's missing
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
