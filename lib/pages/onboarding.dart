import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 812,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 87, 
                top: 655,
                child: Container(
                  width: 201,
                  height: 72,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 201,
                          height: 59,
                          decoration: ShapeDecoration(
                            color: Color(0xFF5063BF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 13,
                        child: Container(
                          width: 201,
                          height: 59,
                          decoration: ShapeDecoration(
                            color: Color(0xFF5063BF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 44,
                        top: 16,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 61,
                top: 406,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 45,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w700,
                          height: 0.02,
                        ),
                      ),
                      TextSpan(
                        text: '                        ',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 40,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w700,
                          height: 0.03,
                        ),
                      ),
                      TextSpan(
                        text: 'KTM Scan.',
                        style: TextStyle(
                          color: Color(0xFF5063BF),
                          fontSize: 36,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w700,
                          height: 0.04,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                left: 91,
                top: 528,
                child: Text(
                  'Your Best Money Transfer Partner.',
                  style: TextStyle(
                    color: Color(0xFF878787),
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 296,
                child: Container(
                  width: 83,
                  height: 83,
                  decoration: ShapeDecoration(
                    color: Color(0xFF5063BF),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 172,
                top: 296,
                child: Container(
                  width: 83,
                  height: 83,
                  decoration: ShapeDecoration(
                    color: Color(0xFF8EDFEB),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}