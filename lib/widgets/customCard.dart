// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

// Link to DB
final List data = [
  {
    'color': Colors.red,
  },
  {
    'color': Colors.green,
  },
  {
    'color': Colors.blue,
  }
];

class Tinder extends StatefulWidget {
  @override
  _TinderState createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  // Dynamically load CustomCards from database
  List<CustomCard> CustomCards = [
    CustomCard(
      data[0]['color'],
    ),
    CustomCard(
      data[1]['color'],
    ),
    CustomCard(
      data[2]['color'],
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
  final Color color;
  CustomCard(this.color);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      // Set the swipable widget
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: color,
        ),
      ),

      // onSwipeRight, left, up, down, cancel, etc...
    );
  }
}
