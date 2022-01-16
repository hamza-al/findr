// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors, unused_import

import 'package:findr/pages/fogotpassword.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:findr/widgets/customButton1.dart';
import 'package:findr/widgets/profileText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findr/widgets/textbox.dart';

import 'editprofile.dart';

const List<String> skills = [
  "C++",
  "Java",
  "Python",
  "Haskell"
];

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      body: Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child : Row(
                    children: [
                        Container(
                            margin : EdgeInsets.only(left:MediaQuery. of(context).size.width/10),
                            child: CircleAvatar(
                              child: Icon(Icons.person),
                              backgroundColor: Colors.white,
                              radius: 45,
                            )
                        ),
                        Column(
                          children: [
                            Container(
                              margin : EdgeInsets.only(left:MediaQuery. of(context).size.width/10),
                              child: Text(
                                'Jaden Mathias',
                                style: GoogleFonts.poppins(
                                color: accentOne,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),

                              ),
                            ),
                            Container(
                              margin : EdgeInsets.only(left:MediaQuery. of(context).size.width/10),
                              child: Text(
                                'Status',
                                style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),

                              ),
                            )
                          ],
                        )
                    ]
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Dashboard",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ProfileText(
                text: 'Data',
                list: skills,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EditProfilePage()));
              },
              child: CustomButton1(
                color: accentOne,
                text: 'Edit profile',
              ),
            ),
          ]
        ),
      )
    );
  }
}
