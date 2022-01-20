import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> addUser(String firstName) async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(uid).set({'firstName': firstName, 'uid': uid});
}

Future<void> addCompany(String name) async {
  CollectionReference users =
      FirebaseFirestore.instance.collection('employers');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.add({'firstName': name, 'uid': uid});
}

Future<void> addInterests(List<String> interests, bool isUser) async {
  CollectionReference users = (isUser)
      ? FirebaseFirestore.instance.collection('users')
      : FirebaseFirestore.instance.collection('employers');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uId = auth.currentUser!.uid;
  users.doc(uId).set({
    'interests': interests,
  });
}
