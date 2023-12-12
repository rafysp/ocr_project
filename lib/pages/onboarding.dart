import 'package:flutter/material.dart';
import 'package:pblktm/pages/splashscreen.dart';
import 'package:pblktm/pages/home.dart';

void main() {
  runApp(const Onboarding());
}

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          OnboardingScreen(),
        ]),
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 375,
              top: 0,
              height: 812,
              child: Container(
                width: 375,
                height: 812,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Positioned(
              left: 90,
              top: 320,
              child: Text(
                'Welcome to\nKTM Scan.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 40,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Poppins-SemiBold',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 97,
              top: 550, // Adjust the top position to position it below the text
              child: GestureDetector(
                onTap: () {
                  // Navigate to the Home screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Container(
                  width: 201,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: 201,
                        top: 0,
                        height: 59,
                        child: Container(
                          width: 201,
                          height: 59,
                          decoration: BoxDecoration(
                            color: const Color(0xff5063bf),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 44,
                        top: 16,
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 22,
                            color: const Color(0xffffffff),
                            fontFamily: 'Arial-ItalicMT',
                            fontWeight: FontWeight.normal,
                          ),
                          maxLines: 9999,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 97,
              top: 518,
              child: Text(
                'Your Best Money Transfer Partner.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    color: const Color(0xff878787),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
                left: 115,
                width: 95,
                top: 200,
                height: 95,
                child: Container(
                    width: 83,
                    height: 83,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(80, 99, 191, 1),
                      borderRadius: BorderRadius.all(Radius.elliptical(83, 83)),
                    ))),
            Positioned(
                left: 182,
                width: 95,
                top: 200,
                height: 95,
                child: Container(
                    width: 83,
                    height: 83,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(142, 223, 235, 1),
                      borderRadius: BorderRadius.all(Radius.elliptical(83, 83)),
                    ))),
          ],
        ),
      ),
    );
  }
}
