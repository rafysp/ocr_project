import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("History")),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore
            .collection('pinjaman')
            .orderBy('timestamp', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final barangList = snapshot.data!.docs;

            return ListView.builder(
              itemCount: barangList.length,
              itemBuilder: (context, index) {
                DocumentSnapshot barang = barangList[index];
                Map<String, dynamic> barangData =
                    barang.data() as Map<String, dynamic>;
                String brgNama = barangData['namaBarang'] ?? '';
                String ktpNama = barangData['nama'] ?? '';
                String ktpNik = barangData['nik'] ?? '';
                String status = barangData['status'] ?? '';
                Timestamp time = barangData['timestamp'] ?? Timestamp.now();

                // Convert Timestamp to DateTime
                DateTime dateTime = time.toDate();

                // Format DateTime to String
                String formattedDateTime =
                    dateTime.toString(); // or apply a specific format

                return ListTile(
                  title: GestureDetector(
                    onTap: () {
                      // Navigate or perform actions when the item is tapped
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(83, 102, 190, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama: $ktpNama',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.3125,
                              ),
                            ),
                            Text(
                              'NIK: $ktpNik',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.3125,
                              ),
                            ),
                            Text(
                              'Nama Barang: $brgNama',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.3125,
                              ),
                            ),
                            Text(
                              'Status Pinjam: $status',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.3125,
                              ),
                            ),
                            Text(
                              'Waktu Pinjam: $formattedDateTime',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.3125,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // Implement edit functionality for this item
                                    FirebaseFirestore.instance
                                        .collection('pinjaman')
                                        .doc(barang.id)
                                        .update({'status': 'Dikembalikan'});
                                  },
                                  icon: Icon(Icons.edit, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Text("Barang tidak ada");
          }
        },
      ),
    );
  }
}
