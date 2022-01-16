// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:findr/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:google_fonts/google_fonts.dart';

// Link to DB

class Tinder extends StatefulWidget {
  @override
  _TinderState createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  // Dynamically load CustomCards from database
  List<CustomCard> CustomCards = [
    CustomCard(
      imagePath: 'assets/google.png',
      name: "Google",
      jobTitle: 'Senior SWE',
      time: '2',
      salary: '208k',
    ),
    CustomCard(
      imagePath: 'assets/amazon.png',
      name: "Amazon",
      jobTitle: 'Entry Level SWE',
      time: '4',
      salary: '120k',
    ),
    CustomCard(
      imagePath: 'assets/microsoft.png',
      name: "Google",
      jobTitle: 'Data Scientist',
      time: '1',
      salary: '102k',
    ),
    CustomCard(
      imagePath: 'assets/ship.png',
      name: "ShipCo",
      jobTitle: 'QA Analyst',
      time: '26',
      salary: '57k',
    ),
    CustomCard(
      imagePath: 'assets/walmart.png',
      name: "Walmart",
      jobTitle: 'Web Developer',
      time: '2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Stack of CustomCards that can be swiped. Set width, height, etc here.
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      // Important to keep as a stack to have overlay of CustomCards.
      child: Stack(
        children: CustomCards,
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  // Made to distinguish CustomCards
  // Add your own applicable data here
  final String imagePath;
  final String time;
  final String name;
  final String jobTitle;
  final String salary;

  CustomCard(
      {required this.imagePath,
      required this.jobTitle,
      required this.name,
      this.salary = 'N/A',
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Swipable(
      // Set the swipable widget
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color.fromRGBO(51, 54, 70, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.1),
                radius: 100,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 40, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  ),
                  Text(jobTitle,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
                  Text('Expected Salary: $salary',
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
                  Text('Posted: $time days ago',
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12))
                ],
              ),
            )),
          ],
        ),
      ),

      // onSwipeRight, left, up, down, cancel, etc...
    );
  }
}
