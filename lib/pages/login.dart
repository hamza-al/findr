// ignore_for_file: sized_box_for_whitespace

import 'package:findr/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findr/widgets/textbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: Column(
          children: [
            Container(
              child: Center(
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            color: accentOne,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ))),
            ),
            Container(
              child:
                  TextBox(hint: "Email", icon: Icons.email, isPassword: false),
            )
          ],
        ));
  }
}
