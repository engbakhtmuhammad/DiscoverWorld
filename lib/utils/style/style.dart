import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App Colors
var primaryColor = Color.fromARGB(255, 147, 71, 160);
var amberColor = Colors.amber;
var blackColor = const Color(0xFF000000);
var blackLightColor = const Color(0xFF808080);
var whiteColor = const Color(0xFFFFFFFF);

// TextStyles

buttonTextStyle() {
  return GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 16,
      color: whiteColor,
      fontWeight: FontWeight.w600);
}

titleTextStyle() {
  return GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600);
}

titlePrimaryTextStyle() {
  return GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 20,
      color: primaryColor,
      fontWeight: FontWeight.w600);
}

largeBlackTitleTextStyle() {
  return GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w600);
}

subTitleTextStyle() {
  return GoogleFonts.poppins(
      decoration: TextDecoration.none,
      fontSize: 14,
      color: blackLightColor,
      fontWeight: FontWeight.w500);
}

subTitleWhiteTextStyle() {
  return GoogleFonts.poppins(
      decoration: TextDecoration.none,
      fontSize: 14,
      color: whiteColor,
      fontWeight: FontWeight.w500);
}

subTitleBlackTextStyle() {
  return GoogleFonts.fredokaOne(
      decoration: TextDecoration.none,
      letterSpacing: 1,
      fontSize: 14,
      color: blackColor,
      fontWeight: FontWeight.w400);
}

subTitlePrimaryTextStyle() {
  return GoogleFonts.poppins(
      decoration: TextDecoration.none,
      fontSize: 14,
      color: primaryColor,
      fontWeight: FontWeight.w400);
}

subTitleBoldTextStyle() {
  return GoogleFonts.fredokaOne(
      letterSpacing: 1,
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600);
}

descriptionBlackTextStyle() {
  return GoogleFonts.fredokaOne(
      letterSpacing: 1,
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w600);
}

mediumTitleTextStyle() {
  return GoogleFonts.fredokaOne(
      letterSpacing: 1,
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w400);
}

double containerRoundCorner = 30;
