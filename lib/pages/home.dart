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
              left: 23,
              width: 327,
              top: 720,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 327,
                    top: 0,
                    height: 70,
                    child: Container(
                      width: 327,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 31,
                    width: 44,
                    top: 14,
                    height: 80,
                    child: Container(
                      width: 44,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0x330166ff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 31,
                    width: 44,
                    top: 14,
                    height: 80,
                    child: Container(
                      width: 44,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff5164bf),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 28,
              width: 323,
              top: 143,
              height: 64,
              child: Container(
                width: 323,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color(0xfff7f5f5),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Positioned(
              left: 28,
              width: 322,
              top: 497,
              height: 79,
              child: Container(
                width: 322,
                height: 79,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              left: 29,
              width: 322,
              top: 229,
              height: 79,
              child: Container(
                width: 322,
                height: 79,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              left: 29,
              width: 322,
              top: 319,
              height: 79,
              child: Container(
                width: 322,
                height: 79,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              left: 29,
              width: 322,
              top: 409,
              height: 79,
              child: Container(
                width: 322,
                height: 79,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              left: 29,
              width: 322,
              top: 587,
              height: 79,
              child: Container(
                width: 322,
                height: 79,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              left: 36,
              top: 183,
              child: Text(
                'KTM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: const Color(0xff878787),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 41,
              width: 57,
              top: 330,
              height: 57,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Container()),
            ),
            Positioned(
              left: 41,
              width: 57,
              top: 509,
              height: 57,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Container()),
            ),
            Positioned(
              left: 42,
              width: 57,
              top: 421,
              height: 57,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Container()),
            ),
            Positioned(
              left: 42,
              width: 57,
              top: 235,
              height: 57,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Container()),
            ),
            Positioned(
              left: 42,
              width: 57,
              top: 599,
              height: 57,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: Container()),
            ),
            Positioned(
              left: 64,
              width: 24,
              top: 743,
              height: 24,
              child: Stack(
                children: [
                  Positioned(
                      left: 2,
                      width: 20,
                      top: 2.33,
                      height: 18.6,
                      child: Container()),
                ],
              ),
            ),
            Positioned(
                left: 98,
                width: 17.73,
                top: 234,
                height: 17.73,
                child: Container()),
            Positioned(
              left: 111,
              top: 515,
              child: Text(
                'Sarah',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 111,
              top: 542,
              child: Text(
                '12:23 AM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'DMSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 248,
              child: Text(
                'Rafy',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 337,
              child: Text(
                'Rafy',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 427,
              child: Text(
                'Sarah',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 274,
              child: Text(
                '4:34 PM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'DMSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 364,
              child: Text(
                '6:57 PM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'DMSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 454,
              child: Text(
                '12:23 AM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'DMSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 605,
              child: Text(
                'Sarah',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 112,
              top: 632,
              child: Text(
                '12:23 AM',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'DMSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 115,
              top: 60,
              child: Text(
                'Selamat Datang!',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: const Color(0xff1e1e1e),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 139,
              width: 24,
              top: 743,
              height: 24,
              child: Stack(
                children: [
                  Positioned(
                      left: 2,
                      width: 20,
                      top: 4,
                      height: 16,
                      child: Container()),
                ],
              ),
            ),
            Positioned(
              left: 140,
              width: 24,
              top: 739,
              height: 24,
              child: Stack(
                children: [
                  Positioned(
                      left: 2,
                      width: 20,
                      top: 4,
                      height: 16,
                      child: Container()),
                ],
              ),
            ),
            Positioned(
              left: 187,
              top: 250.14,
              child: Text(
                '34.46',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
                left: 203,
                width: 17.73,
                top: 234,
                height: 17.73,
                child: Container()),
            Positioned(
              left: 215,
              width: 24,
              top: 743,
              height: 24,
              child: Stack(
                children: [
                  Positioned(
                    left: 3,
                    width: 18,
                    top: 3,
                    height: 18,
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff8edfeb), width: 2),
                        ),
                        child: Container()),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 292,
              top: 250.14,
              child: Text(
                '95.31',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 296,
              width: 24,
              top: 743,
              height: 24,
              child: Stack(
                children: [
                  Positioned(
                      left: 2,
                      width: 20,
                      top: 2,
                      height: 20,
                      child: Container()),
                ],
              ),
            ),
            Positioned(
              left: 299,
              top: 183,
              child: Text(
                'See All',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: const Color(0xff5163bf),
                    fontFamily: 'ArialMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 308,
              width: 17.73,
              top: 234,
              height: 17.73,
              child: Container(),
            ),
            Positioned(
              left: 344,
              width: 4,
              top: 399,
              height: 7,
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff5165bf), width: 1),
                  ),
                  child: null),
            ),
          ],
        ),
      ),
    );
  }
}
