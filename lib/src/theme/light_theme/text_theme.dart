import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.openSans(
      fontSize: 40.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );
}
