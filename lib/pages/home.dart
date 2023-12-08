import 'package:flutter/material.dart';
import 'package:pblktm/pages/splashscreen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          width: 800,
          height: 812,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: MediaQuery.of(context).size.height *
                    0.15, // Adjust this value for vertical position
                left: 40,
                right: 0,
                child: Container(
                    width: 310,
                    height: 374,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 310.0000915527344,
                              height: 171,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 310,
                                        height: 171,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 310,
                                                  height: 171,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                      topRight:
                                                          Radius.circular(20),
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        83, 102, 190, 1),
                                                  ))),
                                          Positioned(
                                              top: 136,
                                              left: 234,
                                              child: Text(
                                                'KTM Scan',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'DM Sans',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.5),
                                              )),
                                          Positioned(
                                              top: 16,
                                              left: 14,
                                              child: Container(
                                                  width: 148,
                                                  height: 29,
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text(
                                                          'Selamat Datang',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontSize: 16,
                                                              letterSpacing:
                                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height: 1.3125),
                                                        )),
                                                  ]))),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 310,
                                            height: 171,
                                            child: null)),
                              ]))),
                      Positioned(
                          top: 202,
                          left: 0,
                          child: Container(
                              width: 310.0000915527344,
                              height: 172,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 310,
                                        height: 171,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 310,
                                                  height: 171,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                      topRight:
                                                          Radius.circular(20),
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        142, 223, 235, 1),
                                                  ))),
                                          Positioned(
                                              top: 134,
                                              left: 234,
                                              child: Text(
                                                'KTM Scan',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'DM Sans',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.5),
                                              )),
                                          Positioned(
                                              top: 29,
                                              left: 14,
                                              child: Container(
                                                  width: 187,
                                                  height: 63,
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text(
                                                          'Silahkan Klik Tombol Scan\nuntuk Melakukan Scan KTM',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      1),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontSize: 16,
                                                              letterSpacing:
                                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              height: 1.3125),
                                                        )),
                                                  ]))),
                                        ]))),
                                Positioned(
                                    top: 1,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 310,
                                            height: 171,
                                            child: null)),
                              ]))),
                    ]))),
          ])),
    );
  }
}
