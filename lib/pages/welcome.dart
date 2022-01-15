// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:findr/pages/login.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                  child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/welcome.png',
                  scale: 0.5,
                  fit: BoxFit.fitWidth,
                ),
              )),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Welcome to Findr',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 35),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'The one stop shop to all job seekers \n and employers alike',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: CustomButton(
                color: accentOne,
                text: 'Join us',
              ),
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
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
              ),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
