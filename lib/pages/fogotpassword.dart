// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors
import 'package:findr/pages/signup.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findr/widgets/textbox.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
              'Forgot password? 🙄',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 27.5),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "We will send a password reset link to your email",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            CustomText(
                hint: 'Enter Email', icon: Icons.email, isPassword: false),
            Expanded(child: Container()),
            CustomButton(
              color: accentOne,
              text: 'Send Recovery E-mail',
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Back to Signup? ',
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
                              builder: (context) => const SignupPage()));
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
