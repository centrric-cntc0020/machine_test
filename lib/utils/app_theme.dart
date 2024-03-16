import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:machine_test/utils/app_colors.dart';

abstract class AppTheme {
  static final ThemeData themeData = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: cWhite,
    primaryColor: cPrimaryColor,
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: Colors.grey.withOpacity(.5),
        selectionHandleColor: Colors.grey.withOpacity(.5)),
    appBarTheme: const AppBarTheme(color: cPrimaryColor),
    colorScheme: const ColorScheme.light(
      secondary: cSecondaryColor,
      background: cBackgroundColor,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
