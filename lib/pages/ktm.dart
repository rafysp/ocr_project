import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pblktm/pages/pinjam.dart';
import 'package:pblktm/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pblktm/pages/pinjam.dart';

class Ktm extends StatefulWidget {
  @override
  _KtmState createState() => _KtmState();
}

class _KtmState extends State<Ktm> {
  late Stream<QuerySnapshot> _stream;
  String? selectedBarang;

  @override
  void initState() {
    super.initState();
    _stream = FirebaseFirestore.instance
        .collection('responses')
        .orderBy('timestamp')
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KTP Anda'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            var latestDocument = snapshot.data!.docs.last;
            var data = latestDocument.data() as Map<String, dynamic>;

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        color: Color.fromRGBO(81, 100, 191, 1),
                        fontFamily: 'Arial',
                        fontSize: 17,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 20),
                    buildInfoRow('Nomer Induk Kependudukan', data['nik']),
                    buildInfoRow('Nama', data['nama']),
                    buildInfoRow('TTL', data['ttl']),
                    buildInfoRow('Alamat', data['alamat']),
                    SizedBox(height: 20),
                    StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('barang')
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data!.docs.isEmpty) {
                          return Text('No data available');
                        } else {
                          var barangList = snapshot.data!.docs;
                          List<String> options = [];

                          for (var barang in barangList) {
                            var barangData =
                                barang.data() as Map<String, dynamic>;
                            options.add(barangData['namaBarang']);
                          }

                          return DropdownButton<String>(
                            hint: Text('Pilih Barang'),
                            value: selectedBarang,
                            onChanged: (String? value) {
                              setState(() {
                                selectedBarang = value;
                              });
                            },
                            items: options.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        _createPinjamanCollection(data);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Text('Pinjam'),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
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
            value,
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
    );
  }

  void _createPinjamanCollection(Map<String, dynamic> data) {
    if (selectedBarang != null) {
      Map<String, dynamic> pinjamanData = {
        'nama': data['nama'],
        'nik': data['nik'],
        'namaBarang': selectedBarang!,
        'status': 'Dipinjam',
        'timestamp': Timestamp.now()
      };

      FirebaseFirestore.instance
          .collection('pinjaman')
          .add(pinjamanData)
          .then((_) {
        print('Data added to pinjaman collection');
      }).catchError((error) {
        print('Error adding data to pinjaman collection: $error');
      });
    }
  }
}
