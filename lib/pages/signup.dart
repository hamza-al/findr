// ignore_for_file: prefer_const_constructors

import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:findr/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Findr! 👋',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 27.5),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "We're glad to see you've chosen Findr! Sign up below to continue",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            CustomText(hint: 'Username', icon: Icons.person, isPassword: false),
            CustomText(hint: 'Email', icon: Icons.email, isPassword: false),
            CustomText(hint: 'Password', icon: Icons.lock, isPassword: true),
            CustomText(
                hint: 'Repeat password', icon: Icons.lock, isPassword: true),
            Expanded(child: Container()),
            CustomButton(
              color: accentOne,
              text: 'Sign Up',
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member? ',
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
                              builder: (context) => const LoginPage()));
                    },
                    child: Text(
                      'Sign in.',
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
