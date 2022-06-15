import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:flutter/material.dart';

class UIThemes {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: Constants.backgroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        primary: Constants.primaryColor,
        minimumSize: const Size(100, 40),
        maximumSize: const Size(130, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 0.5, color: Constants.primaryColor),
        primary: Constants.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
    ),
    // textTheme: TextTheme(

    // ),
    // textTheme: TextTheme(Style:color: Constants.primaryColor, ),
    iconTheme: IconThemeData(color: Constants.primaryColor),
    // pageTransitionsTheme: PageTransitionsTheme(
    //   builders: kIsWeb
    //       ? {
    //           for (final platform in TargetPlatform.values) platform: const NoTransitionsBuilder(),
    //         }
    //       : const {},
    // ),
  );
}
