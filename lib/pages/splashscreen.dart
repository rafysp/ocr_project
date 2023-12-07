import 'package:flutter/material.dart';
import 'package:pblktm/pages/onboarding.dart';

void main() {
  runApp(const Splash());
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const SplashScreen(title: 'Welcome'),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => SplashPage();
}

class SplashPage extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds before navigating to Onboarding1 screen
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 375,
                height: 812,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 62,
              child: Text(
                'KTM Scan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(80, 99, 191, 1),
                  fontFamily: 'Arial',
                  fontSize: 54,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 0.9444444444444444,
                ),
              ),
            ),
            Positioned(
              top: 445,
              left: 90,
              child: Text(
                'Scan KTM Anda',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(80, 99, 191, 1),
                  fontFamily: 'Arial',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 751,
              left: 107,
              child: Text(
                'Project Based Learning',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Arial',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 255,
              left: 122,
              child: Container(
                width: 132,
                height: 89,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: <Widget>[],
                ),
              ),
            ),
            Positioned(
              top: 255,
              left: 119,
              child: Container(
                width: 83,
                height: 83,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(80, 99, 191, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(83, 83)),
                ),
              ),
            ),
            Positioned(
              top: 255,
              left: 172,
              child: Container(
                width: 83,
                height: 83,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(142, 223, 235, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(83, 83)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
