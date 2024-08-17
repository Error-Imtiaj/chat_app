import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServices {
  // get instace of firestore
  final FirebaseFirestore store = FirebaseFirestore.instance;

  // get user stream
  Stream<List<Map<String, dynamic>>> getUserStream() {
    return store.collection("Users").snapshots().map(
      (snapshot) {
        return snapshot.docs.map(
          (doc) {
            // go through each individiual user
            final user = doc.data();
            return user;
          },
        ).toList();
      },
    );
  }

  // send messages

  // get message
}
