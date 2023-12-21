import 'dart:io';

import 'package:flutter/material.dart';

class Ktm extends StatefulWidget {
  final File? imageFile; // Define imageFile as a parameter

  const Ktm({Key? key, this.imageFile}) : super(key: key);

  @override
  _KtmState createState() => _KtmState();
}

class _KtmState extends State<Ktm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: 500,
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
              Container(
                margin: EdgeInsets.only(top: 45, left: 140),
                child: Text(
                  'KTM Anda',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(30, 30, 30, 1),
                    fontFamily: 'Arial',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    height: 2.1,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                      context); // Navigate back to the previous screen
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 50,
                        left: 30,
                        child: Container(
                          width: 70,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(81, 101, 191, 1),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 29,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(81, 100, 191, 1),
                        fontFamily: 'Arial',
                        fontSize: 17,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.2941176470588236,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 331,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nomer Induk Mahasiswa',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(81, 100, 191, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                            Text(
                              '2141720244',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 76, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 331,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nama',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(81, 100, 191, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                            Text(
                              'M. RAFY SHAH PAHLEVI',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 76, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 331,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'TTL',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(81, 100, 191, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                            Text(
                              'MALANG, 10 JANUARI 1990',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 76, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 331,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Prodi',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(81, 100, 191, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                            Text(
                              'D-IV T. INFORMATIKA',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 76, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 331,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alamat',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(81, 100, 191, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                            Text(
                              'Jalan Kebenaran No. 1, Malang',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 76, 1),
                                fontFamily: 'Arial',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
