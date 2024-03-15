import 'package:flutter/material.dart';

import 'colors.dart';

class MyTheme {
  /// Light Theme
  ThemeData get lightTheme => ThemeData(
      primaryColor: accent,
      scaffoldBackgroundColor: bg,
      primaryColorDark: bgAlt,
      splashColor: Colors.transparent,
      iconTheme: const IconThemeData(color: textBlack300),
      radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(accent)),
      bottomSheetTheme: const BottomSheetThemeData(
          surfaceTintColor: bg,
          shadowColor: Colors.transparent,
          elevation: 0,
          modalElevation: 0,
          dragHandleColor: bgAlt),
      fontFamily: 'DMSans',
      textTheme: const TextTheme(
        bodySmall: TextStyle(
            fontSize: 11, fontWeight: FontWeight.w500, color: textBlack500),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: textBlack500),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: textBlack700),
        titleSmall: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: textBlack700),
        titleMedium: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: textBlack900),
        titleLarge: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: textBlack900),
      ));
}
