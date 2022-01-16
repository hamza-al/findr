// ignore_for_file: use_key_in_widget_constructors

import 'package:findr/styles.dart';
import 'package:findr/widgets/customCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatefulWidget {
  final String urlImage;

  const Cards({
    required this.urlImage,
  });

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext contecxt) => SizedBox.expand(
        child: buildCard(),
      );

  Widget buildFrontCard() => GestureDetector(
        child: buildCard(),
      );

  Widget buildCard() => ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.urlImage),
            fit: BoxFit.cover,
            alignment: Alignment(-0.3, 0),
          ),
        ),
      ));
}

class Trial extends StatelessWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tinder();
  }
}
