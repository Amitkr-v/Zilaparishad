import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Page2/dialogue.dart';
import 'package:zilaparishad/Desktop/Searchbox.dart';
import 'package:zilaparishad/Desktop/Trackscheme.dart';
import 'package:zilaparishad/Model.dart';

class mPage2 extends StatefulWidget {
  const mPage2({Key? key}) : super(key: key);

  @override
  State<mPage2> createState() => _mPage2State();
}

class _mPage2State extends State<mPage2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String areaName = "Rajgir";
  List<SchemeItem> schemeItemList = [];
  Map<int, bool> _hoverStates = {};

  @override
  void initState() {
    super.initState();
    // Initialize schemeItemList initially
    _changeArea(areaName);
  }

  void _changeArea(String newArea) {
    setState(() {
      areaName = newArea;

      schemeItemList = _getSchemeItemsForArea(newArea);
    });
  }

  List<SchemeItem> _getSchemeItemsForArea(String area) {
    // Simulating different scheme items based on selected area
    switch (area) {
      case 'Rahui':
        return [
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
        ];

      case 'Harnaut':
        return [
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
            fh: 'SWA Vitt Poshif',
            fy: '2020-2021',
            sn: 'Village to school',
            status: 'Inprogress',
          ),

          // Add more schemes as needed
        ];
      case 'Rajgir':
        return [
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

          // Add more schemes as needed
        ];
      case 'Nursarai':
        return [
          SchemeItem(
            id: '1',
            fh: 'Scheme A',
            fy: '2020-2021',
            sn: 'Scheme A details',
            status: 'Completed',
          ),
          SchemeItem(
            id: '2',
            fh: 'Scheme B',
            fy: '2021-2022',
            sn: 'Scheme B details',
            status: 'Active',
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
          SchemeItem(
            id: '7',
            fh: '16th F.C',
            fy: '2020-2021',
            sn: 'Rajgir to watertanki',
            status: 'Inactive',
          ),
          SchemeItem(
            id: '8',
            fh: '16th F.C',
            fy: '2020-2021',
            sn: 'Rajgir to watertanki',
            status: 'Inactive',
          ),

          // Add more schemes as needed
        ];
      case 'Giriyak':
        return [
          SchemeItem(
            id: '1',
            fh: 'Scheme A',
            fy: '2020-2021',
            sn: 'Scheme A details',
            status: 'Completed',
          ),
          SchemeItem(
            id: '2',
            fh: 'Scheme B',
            fy: '2021-2022',
            sn: 'Scheme B details',
            status: 'Active',
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
          SchemeItem(
            id: '7',
            fh: '16th F.C',
            fy: '2020-2021',
            sn: 'Rajgir to watertanki',
            status: 'Inactive',
          ),
          SchemeItem(
            id: '8',
            fh: '16th F.C',
            fy: '2020-2021',
            sn: 'Rajgir to watertanki',
            status: 'Inactive',
          ),
          SchemeItem(
            id: '9',
            fh: '16th F.C',
            fy: '2020-2021',
            sn: 'Rajgir to watertanki',
            status: 'Inactive',
          ),
          SchemeItem(
            id: '10',
            fh: '16th F.C',
            fy: '2020-2021',
            sn: 'Rajgir to watertanki',
            status: 'Inactive',
          ),

          // Add more schemes as needed
        ];
      // Add cases for other areas
      default:
        return []; // Return an empty list if no specific schemes
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Color.fromARGB(255, 252, 249, 237),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 40),
            Text(
              'Track Zila Parishad Scheme',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF131842),
                fontSize: 25,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
              child: search1(),
            ), // Replace with your search widget
            SizedBox(height: 30),
            Padding(
              padding:
                  EdgeInsetsDirectional.fromSTEB(screenWidth * 0.05, 0, 0, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialogue(
                                areaName: areaName,
                                changeArea: _changeArea,
                              ),
                            );
                          },
                          child: Text(
                            areaName,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF131842),
                              fontSize: 28,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                  Icon(
                    Icons.chevron_right,
                    color: Color.fromARGB(255, 107, 107, 107),
                    size: 35,
                  )
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: tableView(screenWidth, context),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }

  Container tableView(double screenWidth, BuildContext context) {
    return Container(
      width: screenWidth * 0.95,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          rowHeader(context),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: schemeItemList.length,
            itemBuilder: (context, index) {
              return rowCell(
                context,
                schemeItemList[index].id,
                schemeItemList[index].fh,
                schemeItemList[index].fy,
                schemeItemList[index].sn,
                schemeItemList[index].status,
                _hoverStates[index] ?? false,
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
        padding: EdgeInsetsDirectional.only(start: 0.0, top: 16, end: 0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              headerCell(context, screenWidth * 0.15, "Sl."),
              headerCell(context, screenWidth * 0.55, "Scheme details"),
              headerCell(context, screenWidth * 0.2 - 2, "Status"),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowCell(
    BuildContext context,
    String serial,
    String financial_head,
    String fin_year,
    String Scheme_name,
    String status,
    bool isHovered,
  ) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 0,
            top: 2,
            end: 2,
            bottom: 2,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              cellBoxContainer(context, screenWidth * 0.15, serial),
              mobileSecondCellContainer(context, screenWidth * 0.55,
                  Scheme_name + ",", financial_head + ", " + fin_year),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 2),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2 - 2,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: _getColorFromStatus(status),
                  ),
                  child: Center(
                    child: Text(
                      status,
                      style: TextStyle(
                        fontSize: 10,
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
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFFa5a6ac),
          ),
        ),
      ),
    );
  }

  Padding mobileSecondCellContainer(
      BuildContext context, double cellWidth, String text, String text2) {
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
            text + "\n" + text2,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF131842),
            ),
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
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF131842),
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
}
