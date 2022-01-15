import 'package:findr/styles.dart';
import 'package:findr/widgets/customTile.dart';
import 'package:findr/widgets/textbox.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bg,
      body: Center(
        child: TextBox(
          hint: 'Password',
          icon: Icons.bookmark_border,
          isPassword: true,
        ),
      ),
    );
  }
}
