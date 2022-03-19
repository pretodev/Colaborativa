import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTextTheme extends TextTheme {
  AppTextTheme()
      : super(
          headline3: const TextStyle(
            fontFamily: 'BalooDa2',
            fontSize: 48.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            letterSpacing: 0,
          ),
          headline4: GoogleFonts.nunito(
            fontSize: 34.0,
            fontWeight: FontWeight.w800,
            color: AppColors.primaryDark,
            letterSpacing: 0.25,
          ),
          headline5: GoogleFonts.nunito(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
            letterSpacing: 0.0,
          ),
          headline6: GoogleFonts.nunito(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
            letterSpacing: 0.15,
          ),
          bodyText2: GoogleFonts.nunito(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryText,
            letterSpacing: 0.25,
          ),
          bodyText1: GoogleFonts.nunito(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryText,
            letterSpacing: 0.25,
          ),
        );

  final link = GoogleFonts.nunito(
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
    backgroundColor: AppColors.primary,
    letterSpacing: 0.25,
  );
}
