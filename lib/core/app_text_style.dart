import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_goal/core/app_theme.dart';

TextTheme appTextThemeLight = TextTheme(
  headlineLarge: GoogleFonts.lato(
    fontSize: 16,
    color: Colors.white,
  ),
  headlineMedium: GoogleFonts.lato(fontSize: 14, color: Colors.white),
  headlineSmall: GoogleFonts.lato(fontSize: 12, color: const Color(0xffBCBCBC),fontWeight: FontWeight.w900),
  bodySmall: GoogleFonts.lato(fontSize: 10, color: AppThemes.oWhite600),

);
TextTheme appTextThemeDark = TextTheme(
  headlineLarge: GoogleFonts.lato(
    fontSize: 24,
    color: Colors.black,
  ),
  headlineMedium: GoogleFonts.lato(fontSize: 16, color: Colors.black),
  headlineSmall: GoogleFonts.lato(fontSize: 12, color: Colors.black54),
  bodySmall: GoogleFonts.lato(fontSize: 8, color: Colors.black),
  displayMedium: GoogleFonts.inter(fontSize: 14, color: Colors.black54),
);
