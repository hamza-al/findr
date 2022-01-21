// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:findr/pages/nav.dart';
import 'package:findr/pages/selectJob.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:findr/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile Editor',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 27.5),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Make your changes below:",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            CustomText(
                hint: 'Username',
                icon: Icons.person,
                isPassword: false,
                controller: TextEditingController()),
            CustomText(
                hint: 'Position',
                icon: Icons.email,
                isPassword: false,
                controller: TextEditingController()),
            CustomText(
                hint: 'Company',
                icon: Icons.add_box_sharp,
                isPassword: false,
                controller: TextEditingController()),
            CustomText(
                hint: 'Skills',
                icon: Icons.add,
                isPassword: false,
                controller: TextEditingController()),
            CustomText(
              hint: 'BIO',
              icon: Icons.grading,
              isPassword: false,
              controller: TextEditingController(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SelectJob(personal: true)));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: CustomButton(
                  color: accentOne,
                  text: 'Edit Skills',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Nav()));
              },
              child: CustomButton(
                color: accentOne,
                text: 'Save and return',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
