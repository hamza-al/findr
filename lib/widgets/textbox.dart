// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:findr/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final IconData icon;
  const CustomText(
      {required this.hint,
      required this.icon,
      required this.isPassword,
      required this.controller});

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
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
            controller: widget.controller,
            textAlign: TextAlign.start,
            cursorColor: accentOne,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
            obscureText: widget.isPassword && visible,
            decoration: InputDecoration(
                suffixIcon: (widget.isPassword
                    ? ((visible)
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            child: Icon(Icons.visibility_off, color: accentOne))
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            child: Icon(Icons.visibility, color: accentOne)))
                    : null),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: widget.hint,
                hintStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                icon: Icon(
                  widget.icon,
                  color: accentOne,
                )),
          ),
        ));
  }
}
