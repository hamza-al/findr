import 'package:findr/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card extends StatefulWidget {
  final String urlImage;

  const Card({
    Key? key,
    required this.urlImage,
  }): super(key:key)
  
  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext contecxt) => SizedBox.expand(
    child: buildCard(),
  );

  Widget buildCard() => ClipRRect()
  ;
    Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(widget.urlImage),
        fit: BoxFit.cover,
      )
    ),
  );

}