// ignore_for_file: file_names
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findr/styles.dart';

class CustomTile extends StatefulWidget {
  final String emoji;
  final String text;

  const CustomTile({required this.text, required this.emoji});

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(right: 15, bottom: 15),
        height: height / 7,
        width: width * 0.35,
        decoration: BoxDecoration(
          color: (!isTapped) ? Colors.white.withOpacity(0.1) : accentOne,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            '${widget.emoji}\n${widget.text}',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: (!isTapped) ? Colors.white : bg,
                fontWeight: FontWeight.w300,
                fontSize: 15),
          ),
        ),
      ),
    );
  }
}
