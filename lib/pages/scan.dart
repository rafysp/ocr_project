import 'package:flutter/material.dart';

void main() {
  runApp(const Scan());
}

class Scan extends StatelessWidget {
  const Scan({Key? key}) : super(key: key);

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
      home: const ScanScreen(title: 'Welcome'),
    );
  }
}

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScanScreen> createState() => ScanPage();
}

class ScanPage extends State<ScanScreen> {
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
              left: 35,
              width: 63,
              top: 39,
              height: 42,
              child: Container(
                width: 63,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 63,
                      top: 0,
                      height: 34.42,
                      child: Container(
                        width: 63,
                        height: 34.42,
                        decoration: BoxDecoration(
                          color: const Color(0xff5165bf),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 63,
                      top: 7.58,
                      height: 34.42,
                      child: Container(
                        width: 63,
                        height: 34.42,
                        decoration: BoxDecoration(
                          color: const Color(0xff5165bf),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 54,
              width: 24,
              top: 44,
              height: 24,
              child: Stack(
                children: [
                  Positioned(
                    left: 5,
                    width: 14,
                    top: 8,
                    height: 8,
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffffffff), width: 2),
                        ),
                        child: Container()),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 58,
              width: 259,
              top: 509,
              height: 128,
              child: Container(
                width: 259,
                height: 128,
                decoration: BoxDecoration(
                  color: const Color(0xfff1f5fc),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Positioned(
              left: 58,
              width: 259,
              top: 178,
              height: 304,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 259,
                    top: 0,
                    height: 304,
                    child: Container(
                      width: 259,
                      height: 304,
                      decoration: BoxDecoration(
                        color: const Color(0xfffcfcfc),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: const Color(0x0c8d8d8d),
                              offset: Offset(0, 16),
                              blurRadius: 40),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 259,
                    top: 0,
                    height: 304,
                    child: Container(
                      width: 259,
                      height: 304,
                      decoration: BoxDecoration(
                        color: const Color(0x0c1c69ff),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: const Color(0x0c8d8d8d),
                              offset: Offset(0, 16),
                              blurRadius: 40),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 259,
                    top: 23.16,
                    height: 22.65,
                    child: Text(
                      'Scan KTM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 26,
                          color: const Color(0xff1e1e1e),
                          fontFamily: 'Arial-BoldMT',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 83,
              top: 525,
              child: Text(
                'Please, align QR Code within\nthe frame to make scanning\neasily detectable.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    color: const Color(0xff5165bf),
                    fontFamily: 'Arial-ItalicMT',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
                left: 88, width: 47, top: 250, height: 47, child: Container()),
            Positioned(
                left: 88, width: 47, top: 404, height: 47, child: Container()),
            Positioned(
              left: 125,
              top: 109,
              child: Text(
                'Scan KTM Anda',
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
              left: 143,
              top: 35,
              child: Text(
                'Scan KTM',
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
                left: 240, width: 47, top: 250, height: 47, child: Container()),
            Positioned(
                left: 240, width: 47, top: 404, height: 47, child: Container()),
          ],
        ),
      ),
    );
  }
}
