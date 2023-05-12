import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kGrey = const Color(0xFF1F1F1F);
Color kPrimaryColor = const Color(0xFFA5D6A7);
Color kSecondaryColor = Color.fromARGB(204, 54, 108, 145);
Color kWhite = Colors.white;
Color kBlack = Colors.black;

TextStyle kTitleText = GoogleFonts.poppins(
  color: kWhite,
  fontSize: 32.0,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: kSecondaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 14.0,
);

TextStyle kSectionTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateColor.resolveWith((states) => kPrimaryColor),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return kBlack;
        } else if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) {
          return kWhite;
        } else {
          return kPrimaryColor;
        }
      },
    ),
  ),
);
