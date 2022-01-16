// ignore_for_file: file_names
// ignore_for_file: use_key_in_widget_constructors
import 'package:findr/widgets/textboxProfile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findr/styles.dart';

class ProfileText extends StatefulWidget {
  final String text;
  final List list;

  const ProfileText({required this.text, required this.list});

  @override
  State<ProfileText> createState() => _ProfileText();
}

class _ProfileText extends State<ProfileText> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return GestureDetector(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(bottom: 15),
            height: height / 7,
            width: width * 0.9,
            child: Center(
                child: Column(children: [
              Expanded(
                  child: GridView.count(
                      childAspectRatio: 2,
                      crossAxisCount: 3,
                      children: widget.list
                          .map((e) => Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                margin: EdgeInsets.only(right: 15, bottom: 15),
                                height: height / 20,
                                width: width / 5,
                                decoration: BoxDecoration(
                                  color: (!isTapped)
                                      ? Colors.white.withOpacity(0.1)
                                      : accentOne,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child: Text(
                                    '${e[1]} ${e[0]}',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: (!isTapped) ? Colors.white : bg,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15),
                                  ),
                                ),
                              ))
                          .toList())),
              // ignore: prefer_const_constructors
            ]))));
  }
}
