import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Trackscheme.dart';

class search1 extends StatefulWidget {
  @override
  _Search1State createState() => _Search1State();
}

class _Search1State extends State<search1> {
  TextEditingController _search1Controller = TextEditingController();
  final List<String> jobs = [
    'Scheme 1',
    'Scheme 2',
    'Scheme 3',
    'Scheme 4',
    'Scheme 5',
    'Scheme 6',
    'Scheme 7',
    'Scheme abc',
  ];
  List<String> _filteredJobs = [];
  bool showListView = false;
  int? _hoveredIndex;

  void _navigateToProfile(String job) {
    // Placeholder method for navigation
    String k = job;
    // Navigate to the profile page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Hide the list view and unfocus the search field when tapping outside
        FocusScope.of(context).unfocus();
        setState(() {
          showListView = false;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(4, 20, 0, 6),
            child: Column(
              children: [
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromARGB(255, 222, 222, 222),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            controller: _search1Controller,
                            decoration: InputDecoration(
                              hintText: 'Search schemes',
                              hintStyle: TextStyle(
                                color: Color(0xFF7E7E7E),
                                letterSpacing: 0,
                              ),
                              border: InputBorder.none,
                            ),
                            onTap: () {
                              setState(() {
                                _filteredJobs = jobs;
                                showListView = true;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                _filteredJobs = jobs
                                    .where((job) => job
                                        .toLowerCase()
                                        .contains(value.toLowerCase()))
                                    .toList();
                                showListView = _filteredJobs.isNotEmpty;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 10, 10),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF131842),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.search,
                            color: Color(0xFFFFFFFF),
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (_search1Controller.text.isNotEmpty && showListView)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 10, 0, 6),
                    child: Container(
                      width: 500,
                      constraints: BoxConstraints(
                        maxHeight: _filteredJobs.length <= 4
                            ? _filteredJobs.length * 60.0
                            : 240.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color(0x33525252),
                            spreadRadius: 2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _filteredJobs.length > 4
                            ? 4
                            : _filteredJobs.length,
                        itemBuilder: (context, index) {
                          return MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                _hoveredIndex = index;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                _hoveredIndex = null;
                              });
                            },
                            child: GestureDetector(
                              onTap: () {
                                _navigateToProfile(_filteredJobs[index]);
                                setState(() {
                                  showListView = false;
                                });
                              },
                              child: Container(
                                color: _hoveredIndex == index
                                    ? Colors.grey[200]
                                    : Colors.transparent,
                                child: ListTile(
                                  title: Text(_filteredJobs[index]),
                                ),
                              ),
                            ),
                          );
                        },
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

  @override
  void initState() {
    super.initState();
    _search1Controller.addListener(() {
      setState(() {
        _filteredJobs = jobs
            .where((job) => job
                .toLowerCase()
                .contains(_search1Controller.text.toLowerCase()))
            .toList();
        showListView = _filteredJobs.isNotEmpty;
      });
    });

    // Trigger animations initially or any other initialization logic
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        // Perform any initial setup here
      });
    });
  }

  @override
  void dispose() {
    _search1Controller.dispose(); // Dispose of the TextEditingController
    super.dispose();
  }
}
