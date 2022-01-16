import 'package:findr/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeSelector extends StatefulWidget {
  final BuildContext size;
  final Function onPress;
  TypeSelector({required this.size, required this.onPress});

  @override
  _TypeSelectorState createState() => _TypeSelectorState(onPress: onPress);
}

class _TypeSelectorState extends State<TypeSelector> {
  bool selected = false;
  final Function onPress;
  _TypeSelectorState({required this.onPress});
  @override
  Widget build(BuildContext context) {
    double widgetWidth = MediaQuery.of(widget.size).size.width * 0.80;
    double widgetHeight = (MediaQuery.of(widget.size).size.height - 150) * 0.07;
    return Container(
      margin: EdgeInsets.only(),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
          onPress();
        },
        child: Container(
          width: widgetWidth,
          height: widgetHeight,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(50),
              color: Colors.white.withOpacity(0.1)),
          child: Stack(
            children: [
              AnimatedPositioned(
                width: widgetWidth / 2,
                height: widgetHeight - 2,
                left: (!selected) ? 0 : widgetWidth / 2 - 2,
                duration: const Duration(milliseconds: 350),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  decoration: BoxDecoration(
                      color: accentOne,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Center(
                    child: Container(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                            });
                            onPress();
                          },
                          child: Text(
                            'Personal',
                            style: (!selected)
                                ? GoogleFonts.poppins(
                                    color: bg,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15)
                                : GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                          )),
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Container(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                            });
                            onPress();
                          },
                          child: Text(
                            'Business',
                            style: (selected)
                                ? GoogleFonts.poppins(
                                    color: bg,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15)
                                : GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                          )),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
