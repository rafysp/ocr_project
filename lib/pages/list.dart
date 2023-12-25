import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pblktm/pages/scan.dart';
import 'package:pblktm/services/firestore.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController textController = TextEditingController();
  void openBarangBox({String? id}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        content: TextField(
          controller: textController,
          decoration: InputDecoration(
            labelText: 'Nama Barang',
            labelStyle: TextStyle(color: Colors.black),
            hintText: 'Masukkan nama barang',
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black), // Underline color when focused
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              if (id == null) {
                firestoreService.addBarang(textController.text);
              } else {
                firestoreService.updateBarang(id, textController.text);
              }
              textController.clear();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(
                  83, 102, 190, 1), // Change to your desired background color
              onPrimary: Colors.white, // Text color
            ),
            child: Text('Tambah'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: openBarangBox,
          backgroundColor: Color.fromRGBO(83, 102, 190, 1),
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: firestoreService.getBarangStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final barangList = snapshot.data!.docs;

              return ListView.builder(
                  itemCount: barangList.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot barang = barangList[index];
                    String brgID = barang.id;
                    Map<String, dynamic> barangData =
                        barang.data() as Map<String, dynamic>;
                    String brgNama = barangData['nama'];

                    return ListTile(
                        title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Scan(
                                    id: brgID,
                                    nama: brgNama,
                                  ),
                                ),
                              );
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        brgNama,
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'DM Sans',
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1.3125,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            openBarangBox(id: brgID);
                                          },
                                          icon: Icon(Icons.edit,
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            firestoreService
                                                .deleteBarang(brgID);
                                          },
                                          icon: Icon(Icons.delete,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )));
                  });
            } else {
              return const Text("Barang tidak ada");
            }
          },
        ));
  }
}
