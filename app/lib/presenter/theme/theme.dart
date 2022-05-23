import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'typography.dart';

class AppTheme {
  static final instance = ThemeData(
    textTheme: AppTextTheme(),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.nunito(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppColors.primary,
      ),
      elevation: 0,
      color: AppColors.backgroundDark,
      actionsIconTheme: const IconThemeData(
        color: AppColors.primary,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
      ),
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        minimumSize: const Size(50.0, 64.0),
        elevation: 0,
        textStyle: GoogleFonts.nunito(
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          letterSpacing: 0.75,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        side: const BorderSide(color: AppColors.secondary),
        minimumSize: const Size(50.0, 64.0),
        textStyle: GoogleFonts.nunito(
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
          color: AppColors.secondary,
          letterSpacing: 0.75,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputBackground,
      hintStyle: GoogleFonts.nunito(
        fontSize: 18,
        fontWeight: FontWeight.w300,
        //color: ListColors.inputTxt,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lineOnWhite, width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.error, width: 1.5),
        borderRadius: BorderRadius.circular(20.0),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lineOnWhite, width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}
