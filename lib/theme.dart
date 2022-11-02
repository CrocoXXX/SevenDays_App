import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color
Color blackColor = const Color(0xff000000);
Color whiteColor = const Color(0xffFFFFFF);
Color greyColor = const Color(0xff828284);

// Empty State TextStyle
TextStyle titleLightStyle = GoogleFonts.poppins(
  color: const Color(0xff0E1954),
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

TextStyle subtitleLightStyle = GoogleFonts.poppins(
  color: const Color(0xff0E1954),
  fontSize: 16,
);

TextStyle titleDarkStyle = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

TextStyle subtitleDarkStyle = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 16,
  fontWeight: FontWeight.w300,
);

TextStyle buttonStyle = GoogleFonts.openSans(
  color: const Color(0xffF8F8F8),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
