import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference barang =
      FirebaseFirestore.instance.collection('barang');

  // CREATE:
  Future<void> addBarang(String Barang) {
    return barang.add({'nama': Barang, 'timestamp': Timestamp.now()});
  }

  // READ
  Stream<QuerySnapshot> getBarangStream() {
    final barangStream =
        barang.orderBy('timestamp', descending: true).snapshots();

    return barangStream;
  }

  // UPDATE
  Future<void> updateBarang(String id, String Barang) {
    return barang.doc(id).update({
      'nama': Barang,
      'timestamp': Timestamp.now(),
    });
  }
  // DELETE
  Future<void> deleteBarang(String id) {
    return barang.doc(id).delete();
  }
}
