// ignore_for_file: prefer_const_constructors

import 'package:findr/pages/nav.dart';
import 'package:findr/pages/selectJob.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:findr/widgets/textbox.dart';
import 'package:findr/widgets/typeSelector.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  TextEditingController pwConfirmController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool personal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: (personal)
              ? [
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
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Center(
                      child: TypeSelector(
                        onPress: () {
                          setState(() {
                            personal = !personal;
                          });
                        },
                        size: context,
                      ),
                    ),
                  ),
                  CustomText(
                    hint: 'Full name',
                    icon: Icons.person,
                    isPassword: false,
                    controller: nameController,
                  ),
                  CustomText(
                    hint: 'Email',
                    icon: Icons.email,
                    isPassword: false,
                    controller: emailController,
                  ),
                  CustomText(
                    hint: 'Password',
                    icon: Icons.lock,
                    isPassword: true,
                    controller: pwController,
                  ),
                  CustomText(
                    hint: 'Repeat password',
                    icon: Icons.lock,
                    isPassword: true,
                    controller: pwConfirmController,
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: pwController.text);
                        if (newUser != null) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectJob()),
                              (route) => false);
                        }
                      } catch (e) {
                        print(e.toString());
                      }
                    },
                    child: CustomButton(
                      color: accentOne,
                      text: 'Sign Up',
                    ),
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
                                    builder: (context) => LoginPage()));
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
                ]
              : [
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
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Center(
                      child: TypeSelector(
                        onPress: () {
                          setState(() {
                            personal = !personal;
                          });
                        },
                        size: context,
                      ),
                    ),
                  ),
                  CustomText(
                    hint: 'Company name',
                    icon: Icons.person,
                    isPassword: false,
                    controller: nameController,
                  ),
                  CustomText(
                    hint: 'Email',
                    icon: Icons.email,
                    isPassword: false,
                    controller: emailController,
                  ),
                  CustomText(
                    hint: 'Password',
                    icon: Icons.lock,
                    isPassword: true,
                    controller: pwController,
                  ),
                  CustomText(
                    hint: 'Repeat password',
                    icon: Icons.lock,
                    isPassword: true,
                    controller: pwConfirmController,
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: pwController.text);
                        if (newUser != null) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectJob()),
                              (route) => false);
                        }
                      } catch (e) {
                        print(e.toString());
                      }
                    },
                    child: CustomButton(
                      color: accentOne,
                      text: 'Sign Up',
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already registered? ',
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
