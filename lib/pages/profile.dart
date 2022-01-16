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

const List<List<String>> skills = [
  ["C++", "©️"],
  ["Java", '☕'],
  ["Python", "🐍 "],
  ["Haskell", "😡"]
];
const List<String> emojis = ["🖥️", '☕', "🐍 ", "😡"];

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
          child: Container(
            margin: EdgeInsets.only(left: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  child: Row(children: [
                Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 10),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: accentOne,
                      ),
                      backgroundColor: Colors.white.withOpacity(0.1),
                      radius: 45,
                    )),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        'Jaden Mathias',
                        style: GoogleFonts.poppins(
                            color: accentOne,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10),
                      child: Text(
                        'Unemployed',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                EditProfilePage()));
                  },
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ))
              ])),
              Container(
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, bottom: 15),
                child: Text(
                  "About Me",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 10, bottom: 15, right: 20),
                child: Text(
                  'Edit profile to add About me section',
                  // "Hey, I am an aspiriring software engineer living in the Bay Area. I finished my computer science degree from McMaster and currently work as a software engineer at Facebook",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, bottom: 15),
                child: Text(
                  "Skills",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
              ProfileText(text: 'text', list: skills),
            ]),
          ),
        ));
  }
}
