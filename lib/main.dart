import 'package:findr/pages/nav.dart';
import 'package:findr/pages/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;

    return MaterialApp(
      home: (_auth.currentUser == null) ? const WelcomePage() : Nav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
