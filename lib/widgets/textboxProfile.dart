// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:findr/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTextbox extends StatefulWidget {
  final String text;
  const ProfileTextbox({
    required this.text,
  });

  @override
  _ProfileTextbox createState() => _ProfileTextbox();
}

class _ProfileTextbox extends State<ProfileTextbox> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white.withOpacity(0.2))),
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: height / 17,
        width: width * 0.9,
        child: Center(
          child: TextField(
            textAlign: TextAlign.start,
            cursorColor: accentOne,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: widget.text,
                hintStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),),
          ),
        ));
  }
}
