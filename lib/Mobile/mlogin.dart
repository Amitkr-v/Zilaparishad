import 'package:flutter/material.dart';
import 'package:zilaparishad/Desktop/Page1/Page1Home.dart';

class mloginPage extends StatefulWidget {
  const mloginPage({super.key});

  @override
  State<mloginPage> createState() => _loginPageState();
}

class _loginPageState extends State<mloginPage>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Container(
      width: screenWidth * 1,
      height: screenHeight * 1,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.3,
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/loginphone.png',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xFF121212),
              fontSize: 30,
              letterSpacing: 0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.perm_contact_calendar,
                size: 30,
                color: Color(0xFF7E7E7E),
              ),
              Container(
                width: screenWidth * 0.7,
                height: 70,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 218, 218, 218), width: 2.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 20.0, top: 10, bottom: 10, end: 20),
                  child: TextField(
                    controller: _userIdController,
                    decoration: InputDecoration(
                      hintText: 'Userid',
                      hintStyle: TextStyle(
                        color: Color(0xFF7E7E7E),
                        letterSpacing: 0,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 30,
                color: Color(0xFF7E7E7E),
              ),
              Container(
                width: screenWidth * 0.7,
                height: 70,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 218, 218, 218), width: 2.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 20.0, top: 10, bottom: 10, end: 20),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFF7E7E7E),
                        letterSpacing: 0,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF845EF2), // Background color
                    foregroundColor: Color(0xFFEDEDF9), // Text color
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24), // Padding
                    minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.7, 60), // Size
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.transparent, width: 1),
                    ),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Developed by ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color.fromARGB(255, 101, 101, 101),
                  letterSpacing: 0,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Text(
                'NS apps innovation',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color.fromARGB(255, 101, 101, 101),
                  letterSpacing: 0,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _login() {
    String userId = _userIdController.text.toUpperCase();
    String password = _passwordController.text;

    if (userId == 'DEMO' && password == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      // Show error message or handle invalid login
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid login ID or password'),
        ),
      );
    }
  }
}
