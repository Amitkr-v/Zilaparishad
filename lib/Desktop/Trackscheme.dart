import 'package:flutter/material.dart';
import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0E4C9F), // Set background to sky blue
        body: ZilaPage(
          schemeName: "Scheme Name : RoadtoWatertanki",
          schemeFinHead: "Financial Head : 6th S.F.C",
          schemeFinYear: "Financial Year : 2024-25",
        ),
      ),
    );
  }
}

class ZilaPage extends StatelessWidget {
  final String schemeName;
  final String schemeFinHead;
  final String schemeFinYear;

  ZilaPage({
    required this.schemeName,
    required this.schemeFinHead,
    required this.schemeFinYear,
  });

  final List<String> rowData1 = [
    "Scheme Details",
    "NOC Letters",
    "ACO Approval",
    "DDC Approval"
  ];
  final List<String> rowData2 = [
    "Ex Engg MB, Bills",
    "MB Approved by TA",
    "TA Monitoring",
    "Ex Engg Work Order",
  ];
  final List<String> rowData3 = [
    "Inspection by Ex Engg",
    "Accountant File Put Up",
    "DDC Final Approval",
    "Scheme Completed"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Zila Parishad Nalanda',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    schemeName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    schemeFinHead,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    schemeFinYear,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Column(
              children: [
                buildRow(context, rowData1, 1),
                buildRow(context, rowData2, 2),
                buildRow(context, rowData3, 3),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildRow(BuildContext context, List<String> rowData, int u) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Positioned.fill(
            left: MediaQuery.of(context).size.width * 0.13,
            bottom: 100,
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPaint(
                painter: LinePainter(),
                size: Size(MediaQuery.of(context).size.width * 0.72, 0),
              ),
            ),
          ),
          if (u == 1)
            Positioned.fill(
              right: 18,
              bottom: 105,
              child: Align(
                alignment: Alignment.centerRight,
                child: CustomPaint(
                  painter: SemiCirclePainter(),
                  size: Size(MediaQuery.of(context).size.width * 0.82, 0),
                ),
              ),
            )
          else if (u == 2)
            Positioned.fill(
              right: MediaQuery.of(context).size.width * 0.83,
              bottom: 105,
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomPaint(
                  painter: SemiCirclePainter2(),
                  size: Size(MediaQuery.of(context).size.width * 0.82, 0),
                ),
              ),
            ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(4, (colIndex) {
                return Container(
                  margin: const EdgeInsets.all(4.0),
                  child: CustomChip(rowData, colIndex, context, u),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomChip(
      List<String> rowData, int colIndex, BuildContext context, int r) {
    return StatefulBuilder(
      builder: (context, setState) {
        late bool isHovered = false;

        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              // color: isHovered ? Color.fromARGB(255, 3, 166, 98) : Colors.deepPurpleAccent[100],

              // boxShadow: [
              //   BoxShadow(
              //     // color:  isHovered ? Color.fromARGB(255, 26, 159, 62) : Colors.white.withOpacity(0.2),
              //     blurRadius: 4,
              //     spreadRadius: 2,
              //     offset: Offset(0, 2),
              //   ),
              // ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff0E4C9F),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Icon(
                      Icons.panorama_fish_eye,
                      size: 40,
                      color: Colors.blue, // Circle color
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      if (r == 1 && colIndex == 1)
                        showDialog(
                          context: context,
                          // useRootNavigator: false,
                          // Navigator.pop(context, true),
                          builder: (BuildContext context) {
                            return Container(
                                child:
                                    PDFdownloadNOC(context, rowData[colIndex]));
                          },
                        );
                      if (r == 1 && colIndex != 1)
                        showDialog(
                          context: context,
                          // useRootNavigator: false,
                          // Navigator.pop(context, true),
                          builder: (BuildContext context) {
                            return Container(
                                child: PDFdownloadScheme(
                                    context, rowData[colIndex]));
                          },
                        );
                      else if (r == 2)
                        showDialog(
                          context: context,
                          // useRootNavigator: false,
                          // Navigator.pop(context, true),
                          builder: (BuildContext context) {
                            return Container(
                                child: PDFdownloadScheme(
                                    context, rowData[colIndex]));
                          },
                        );
                      else if (r == 3)
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                child: PDFdownloadScheme(
                                    context, rowData[colIndex]));
                          },
                        );
                    },
                    child: Text(
                      rowData[colIndex],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 7),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Comment ,',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Date/Time',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ]),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    double radius = 100; // Adjust as needed
    double centerX = size.width * 0.87;
    double centerY = radius;

    Rect rect =
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius);
    canvas.drawArc(rect, -pi / 2, pi, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class SemiCirclePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    double radius = 100; // Adjust as needed
    double centerX = size.width * 0.87;
    double centerY = radius;

    Rect rect =
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius);
    canvas.drawArc(rect, pi / 2, pi, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Center PDFdownloadNOC(BuildContext context, t1) {
  const IconData download_for_offline = IconData(
    0xe203,
    fontFamily: 'MaterialIcons',
  );
  return Center(
    child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.7,
        color: Colors.white,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
                child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Color.fromARGB(98, 139, 166, 255))),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  t1,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallChip(download_for_offline, 'BDO', context),
                    SizedBox(
                      width: 20,
                    ),
                    smallChip(download_for_offline, 'CO', context),
                    SizedBox(
                      width: 20,
                    ),
                    smallChip(download_for_offline, 'PO', context),
                    SizedBox(
                      width: 20,
                    ),
                    smallChip(download_for_offline, 'Ex Engineer', context),
                    SizedBox(
                      width: 20,
                    ),
                    smallChip(download_for_offline, 'TA', context),
                    // SizedBox(width: 20,),
                    // Container(),
                    // Container(),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Comment...',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Date / Time...',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                )
              ],
            ),
          ],
        )),
  );
}

GestureDetector smallChip(
    IconData download_for_offline, String holder, context) {
  return GestureDetector(
      onTap: () async {
        const url = 'https://rti.gov.in/rti-act.pdf';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
          width: 150,
          height: 165,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 221, 238, 226)),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/images/doneTick.png',
                      fit: BoxFit.cover)),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Icon(
                  download_for_offline,
                  size: 45,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                holder,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ],
          )));
}

Center PDFdownloadScheme(BuildContext context, t1) {
  const IconData download_for_offline = IconData(
    0xe203,
    fontFamily: 'MaterialIcons',
  );
  return Center(
    child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.7,
        color: Colors.white,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
                child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Color.fromARGB(98, 139, 166, 255))),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  t1,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallChip(download_for_offline, 'PDF', context),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Comment...',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Date / Time...',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                )
              ],
            ),
          ],
        )),
  );
}

// Center Gallery(BuildContext context, t1) {
//   List<String> images = [
//     'https://www.constructionworld.in/assets/uploads/5bc9764b46be5cadb65451b343b45c0e.jpg',
//     'https://advancedct.com/wp-content/uploads/2021/09/shutterstock_92209726.jpg',
//     'https://www.tensar.co.uk/getattachment/88d9dbe1-d1e3-495a-8ebe-f1ede3df0fda/york-potash-(2).jpg',
//     'https://studiomatter.in/wp-content/uploads/2020/06/dsc3067_01-1.jpg?w=1500',
//     'https://studiomatter.in/wp-content/uploads/2020/06/477c6-construction-process-1.jpg?w=4000&h=',
//     'https://www.constructionworld.in/assets/uploads/5bc9764b46be5cadb65451b343b45c0e.jpg',
//     'https://www.constructionworld.in/assets/uploads/5bc9764b46be5cadb65451b343b45c0e.jpg',
//     'https://advancedct.com/wp-content/uploads/2021/09/shutterstock_92209726.jpg',
    
//   ];