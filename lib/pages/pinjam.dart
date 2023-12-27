import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Pinjam extends StatefulWidget {
  @override
  _PinjamState createState() => _PinjamState();
}

class _PinjamState extends State<Pinjam> {
  late Stream<QuerySnapshot> _stream;

  @override
  void initState() {
    super.initState();
    _stream = FirebaseFirestore.instance.collection('pinjaman').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barang yang Dipinjam'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('Tidak ada barang yang dipinjam'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                var document = snapshot.data!.docs[index];
                var data = document.data() as Map<String, dynamic>;

                // Ensure the field names match the ones in your Firestore collection
                String namaBarang = data['namaBarang'] ?? '';
                String ktpNama = data['nama'] ?? '';
                String ktpNik = data['nik'] ?? '';

                return ListTile(
                  title: Text(namaBarang),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama: $ktpNama'),
                      Text('NIK: $ktpNik'),
                      Text('Nama Barang: $namaBarang')
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
