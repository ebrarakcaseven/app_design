import 'package:cloud_firestore/cloud_firestore.dart';

class StatusService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //veri gösterme
  Stream<QuerySnapshot> getProducts() {
    var ref = _firestore.collection("products").snapshots();
    return ref;
  }

  //veri silme
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("products").doc(docId).delete();
    return ref;
  }
}
