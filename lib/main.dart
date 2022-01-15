import 'package:findr/pages/login.dart';
import 'package:findr/pages/selectJob.dart';
import 'package:findr/pages/signup.dart';
import 'package:findr/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
