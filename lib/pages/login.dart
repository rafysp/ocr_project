import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pblktm/pages/home.dart';
import 'package:pblktm/pages/splashscreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;
  bool _loginFailed = false;

  Future<void> Login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // Reset login failure state when login succeeds
      setState(() {
        _loginFailed = false;
      });
    } catch (e) {
      // Display error message if login fails
      setState(() {
        _loginFailed = true;
      });
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: 375,
              height: 812,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            GestureDetector(
              onTap: Login,
              child: Container(
                margin: EdgeInsets.only(top: 460, left: 90),
                width: 201,
                height: 72,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 201,
                      height: 59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(80, 99, 191, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16, left: 71),
                      child: Text(
                        'Log In',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Arial',
                          fontSize: 22,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 73, left: 33),
              child: Text(
                'Log in',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(80, 99, 191, 1),
                  fontFamily: 'Arial',
                  fontSize: 40,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.05,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 261, left: 33),
              child: Text(
                'Email Address',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(135, 135, 135, 1),
                  fontFamily: 'Arial',
                  fontSize: 15,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 274, left: 33),
              child: TextField(
                cursorColor: Color(0xFF5366BE),
                controller: emailController,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFF5366BE)), // Color when focused
                  ),
                  hintText: 'Enter your email',
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Arial',
                  fontSize: 15,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90, top: 220),
              child: _loginFailed
                  ? Text(
                      'Invalid email or password!',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    )
                  : SizedBox(),
            ),
            Container(
              margin: EdgeInsets.only(top: 353, left: 33),
              child: Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(135, 135, 135, 1),
                  fontFamily: 'Arial',
                  fontSize: 15,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 370, left: 33),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextField(
                    cursorColor: Color(0xFF5366BE),
                    controller: passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFF5366BE)), // Color when focused
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Arial',
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure; // Toggle visibility
                      });
                    },
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 130, left: 33),
              child: Container(
                width: 150,
                height: 150,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(80, 99, 191, 1),
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(48, 47),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 30),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(142, 223, 235, 1),
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(48, 47),
                        ),
                      ),
                    ),
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
