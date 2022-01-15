// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;

  // ignore: use_key_in_widget_constructors
  const CustomButton({required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Container(
      height: height / 12,
      width: width * 0.9,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: Colors.blueGrey[800],
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }
}

// 236 233 250
