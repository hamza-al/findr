// ignore_for_file: prefer_const_constructors

import 'package:findr/pages/nav.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customButton.dart';
import 'package:findr/widgets/customTile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<List<String>> interests = [
  ["💻", "Artificial Intelligence"],
  ["🖲", "Machine Learning"],
  ["🕹", "Internet of Things"],
  ["📟", "Big Data"],
  ["📱", "Mobile"],
  ["🎮", "Game Development"],
  ["📊", "Data Science"],
  ["👾", "AR/VR"],
  ["🌐", "Web development"],
  ["💳", "E-commerce"],
  ["🧱", "Product Design"],
  ["🏧", "Finance"],
];

class SelectJob extends StatefulWidget {
  const SelectJob({Key? key}) : super(key: key);

  @override
  _SelectJobState createState() => _SelectJobState();
}

class _SelectJobState extends State<SelectJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: accentOne,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Nav()));
        },
        mini: false,
        child: Icon(
          Icons.arrow_forward,
          color: bg,
        ),
      ),
      backgroundColor: bg,
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select your interest',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 27.5),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Select the professions you want to see postings for.',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 1.7,
                crossAxisCount: 2,
                children: interests
                    .map((e) => CustomTile(
                          emoji: e[0],
                          text: e[1],
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
