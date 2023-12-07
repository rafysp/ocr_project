import 'package:flutter/material.dart';
import 'package:pblktm/pages/splashscreen.dart';
import 'dart:math';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          HomeScreen(),
        ]),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SelamatdatangWidget - TEXT

    return Text(
      'Selamat Datang!',
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontFamily: 'Arial',
          fontSize: 20,
          letterSpacing:
              0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 2.1),
    );
  }
}
