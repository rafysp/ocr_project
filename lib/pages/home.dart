import 'package:flutter/material.dart';
import 'package:pblktm/pages/scan.dart';
import 'package:pblktm/pages/splashscreen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: 40,
            right: 40,
            child: Container(
              width: 310,
              height: 172,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(83, 102, 190, 1),
                image: DecorationImage(
                  image: AssetImage('assets/v1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 16),
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DM Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.3125,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'KTM Scan',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DM Sans',
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 40,
            child: Container(
              width: 310,
              height: 172,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(142, 223, 235, 1),
                image: DecorationImage(
                  image: AssetImage('assets/v1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 29),
                    child: Text(
                      'Silahkan Klik Tombol Scan\nuntuk Melakukan Scan KTM',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'DM Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 1.3125,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 170),
                    child: Container(
                      width: 100,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Scan(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Scan',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'DM Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            width: 50,
            height: 50,
            top: 50,
            left: 300,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64),
                image: DecorationImage(
                  image: AssetImage('assets/profil.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 40,
            child: Container(
              height: 70,
              child: FittedBox(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10), // Adjust padding as needed
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   color: const Color.fromRGBO(81, 101, 191, 1),
                  // ),
                  child: Text(
                    'Selamat Datang,\nRafy Shah',
                    style: TextStyle(
                      color: Color(0xFF5366BE),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
