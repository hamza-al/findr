// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors

import 'package:findr/pages/fogotpassword.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
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
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login 🔓',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 27.5),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Welcome back to Findr, we've missed you!",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            CustomText(hint: 'Email', icon: Icons.email, isPassword: false),
            CustomText(hint: 'Password', icon: Icons.lock, isPassword: true),
            Expanded(child: Container()),
            CustomButton(
              color: accentOne,
              text: 'Log In',
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password ',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordPage()));
                    },
                    child: Text(
                      'Click Here',
                      style: GoogleFonts.poppins(
                          color: accentOne,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
