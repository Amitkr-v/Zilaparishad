import 'package:flutter/material.dart';

class Dialogue extends StatelessWidget {
  final String areaName;
  final Function(String) changeArea;

  Dialogue({required this.areaName, required this.changeArea});

  @override
  Widget build(BuildContext context) {
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
                color:Color(0xFF131842),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: zilaParishadAreas.length,
                itemBuilder: (context, index) {
                  final area = zilaParishadAreas[index];
                  return GestureDetector(
                    child: MouseRegion(
                      
                      child: InkWell(
                        onTap: () {
                          changeArea(area); // Change areaName
                          Navigator.of(context).pop(); // Close dialog
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                            color: areaName == area
                                ? Colors.grey[300]
                                : Colors.transparent,
                            border: Border.all(
                              color: areaName == area
                                  ? Colors.blue
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              area,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF131842),
                              ),
                            ),
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
  }
}
