import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Searchbox.dart';
import 'package:zilaparishad/Desktop/Trackscheme.dart';
import 'package:zilaparishad/Model.dart';

class Page21 extends StatefulWidget {
  const Page21({Key? key}) : super(key: key);

  @override
  State<Page21> createState() => _Page2State();
}

class _Page2State extends State<Page21> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Map<String, bool> _hoverStates = {};
  String areaName = "Rajgir";
  List<SchemeItem> schemeItemList = [];

  @override
  void initState() {
    super.initState();
    // Initialize schemeItemList with your items
    schemeItemList = [
      SchemeItem(
        id: '1',
        fh: '15th F.C',
        fy: '2020-2021',
        sn: 'Road to school',
        status: 'Completed',
      ),
      SchemeItem(
        id: '2',
        fh: '6th S.F.C',
        fy: '2021-2022',
        sn: 'Road to Watertanki',
        status: 'Inactive',
      ),
      SchemeItem(
        id: '3',
        fh: '5th S.F.C',
        fy: '2017-2018',
        sn: 'Watertanki to village',
        status: 'Completed',
      ),
      SchemeItem(
        id: '4',
        fh: 'SWA Vitt Poshif',
        fy: '2020-2021',
        sn: 'Village to school',
        status: 'Inprogress',
      ),
      SchemeItem(
        id: '5',
        fh: 'Own resource',
        fy: '2020-2021',
        sn: 'school to Rajgir',
        status: 'Completed',
      ),
      SchemeItem(
        id: '6',
        fh: '16th F.C',
        fy: '2020-2021',
        sn: 'Rajgir to watertanki',
        status: 'Inactive',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Color(0xFFFBFBFB),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 40),
            Text(
              'Track Zila Parishad Scheme',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF000000),
                fontSize: 35,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            search1(), // Replace with your search widget
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  screenWidth * 0.1 + 16, 0, 0, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      _showDownloadDialog(context);
                    },
                    child: Text(
                      areaName,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF000000),
                        fontSize: 28,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '(${schemeItemList.length})',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 155, 155, 155),
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            tableView(screenWidth, context, areaName),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }

  Container tableView(
    double screenWidth,
    BuildContext context,
    String areaName,
  ) {
    return Container(
      width: screenWidth * 0.8 + 12,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          rowHeader(context),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: schemeItemList.length,
            itemBuilder: (context, index) {
              return rowCell(
                context,
                schemeItemList[index].id,
                schemeItemList[index].fh,
                schemeItemList[index].fy,
                schemeItemList[index].sn,
                schemeItemList[index].status,
                '#CFFFD2',
                _hoverStates[schemeItemList[index].id] ?? false,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage()),
                  );
                },
                (isHovered) {
                  setState(() {
                    _hoverStates[schemeItemList[index].id] = isHovered;
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Container rowHeader(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsetsDirectional.only(start: 0.0, top: 16, end: 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            headerCell(context, screenWidth * 0.1, "Serial No."),
            headerCell(context, screenWidth * 0.15, "Financial Head"),
            headerCell(context, screenWidth * 0.15, "Financial Year"),
            headerCell(context, screenWidth * 0.25, "Scheme Name & Details"),
            headerCell(context, screenWidth * 0.15, "Status"),
          ],
        ),
      ),
    );
  }

  GestureDetector rowCell(
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
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        onEnter: (_) => onHover(true),
        onExit: (_) => onHover(false),
        child: Container(
          decoration: BoxDecoration(
            color: isHovered
                ? Color.fromARGB(255, 223, 223, 223)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 0, top: 2, end: 2, bottom: 2),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                cellBoxContainer(context, screenWidth * 0.1, serial),
                cellBoxContainer(context, screenWidth * 0.15, financial_head),
                cellBoxContainer(context, screenWidth * 0.15, fin_year),
                cellBoxContainer(context, screenWidth * 0.25, Scheme_name),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 2),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15 - 2,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: _getColorFromStatus(status),
                    ),
                    child: Center(
                      child: Text(
                        status,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container headerCell(BuildContext context, double cellWidth, String text) {
    return Container(
      width: cellWidth,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 8, 4),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xFFa5a6ac),
          ),
        ),
      ),
    );
  }

  Padding cellBoxContainer(
      BuildContext context, double cellWidth, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 2),
      child: Container(
        width: cellWidth,
        constraints: BoxConstraints(minHeight: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.white, // Change color on hover
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 4, 8, 4),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(216, 0, 6, 27),
            ),
          ),
        ),
      ),
    );
  }

  Color _getColorFromStatus(String status) {
  Color color;
  switch (status.toLowerCase()) {
    case 'completed':
      color = const Color.fromARGB(255, 209, 252, 210);
      break;
    case 'inprogress':
      color = const Color.fromARGB(255, 250, 246, 208);
      break;
    default:
      color = const Color.fromARGB(255, 252, 217, 214);
      break;
  }
  return color;
}

  void _showDownloadDialog(BuildContext context) {
    List<String> zilaParishadAreas = [
      'Giriyak',
      'Rahui',
      'Nursarai',
      'Harnaut',
      'Chandi',
      'Islampur',
      'Rajgir',
      'Asthawan',
      'Sarmera',
      'Hilsa',
      'Biharsharif',
      'Ekangarsarai',
      'Ben',
      'Nagarnausa',
      'Karaiparsurai',
      'Silao',
      'Parwalpur',
      'Katrisarai',
      'Bind',
      'Tharthari',
      // Add more areas as needed
    ];

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
                Text(
                  'Zila Parishad Areas in Nalanda',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: zilaParishadAreas.length,
                    itemBuilder: (context, index) {
                      final area = zilaParishadAreas[index];
                      return GestureDetector(
                        onTap: () {
                          _changeArea(area); // Change areaName
                          Navigator.of(context).pop(); // Close dialog
                        },
                        child: Container(
                          color: areaName == area
                              ? Colors.grey[300]
                              : Colors.transparent,
                          child: ListTile(
                            title: Text(
                              area,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _changeArea(String newArea) {
    setState(() {
      areaName = newArea;
      schemeItemList.add(SchemeItem(
        id: '7',
        fh: 'New FH 1',
        fy: '2022-2023',
        sn: 'New Scheme 1',
        status: 'Pending',
      ));
      schemeItemList.add(SchemeItem(
        id: '8',
        fh: 'New FH 2',
        fy: '2022-2023',
        sn: 'New Scheme 2',
        status: 'Completed',
      ));
    });
  }
}