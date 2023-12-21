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
          borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: 375,
              height: 812,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            Container(
              margin: EdgeInsets.only(top: 320, left: 25),
              child: Text('Peminjaman Barang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 40,
                    color: Color.fromRGBO(80, 99, 191, 1),
                    fontFamily: 'Poppins-SemiBold',
                    fontWeight: FontWeight.normal,
                    height: 1,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 470, left: 120),
              child: Text(
                'Solusi Peminjaman Barang\nBerbasis KTM',
                textAlign: TextAlign.center,
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
            Container(
              margin: EdgeInsets.only(top: 751, left: 107),
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
            Container(
              margin: EdgeInsets.only(top: 200, left: 115),
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                color: Color.fromRGBO(80, 99, 191, 1),
                borderRadius: BorderRadius.circular(83),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 182),
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                color: Color.fromRGBO(142, 223, 235, 1),
                borderRadius: BorderRadius.circular(83),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
