import 'package:flutter/material.dart';

const Color accentOne = Color.fromRGBO(58, 252, 218, 1);
const Color bg = Color.fromRGBO(11, 15, 37, 1);
TextStyle kSignUpButtonTitle({required Color color}) => TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Helvecta',
    fontSize: 16,
    color: color);

TextStyle kSignUpButtonSub({required Color color}) => TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Helvecta',
    fontSize: 13,
    color: color);

TextStyle kAppBarText({required Color color}) => TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'Helvecta',
    fontSize: 16,
    color: color);
