import 'package:dots_e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';

ThemeData sharedTheme = ThemeData(
  scaffoldBackgroundColor: Constants.primaryScaffoldColor,
  primarySwatch: Constants.whiteColorMaterialColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: const TextTheme(
    
    displayMedium: TextStyle(
      fontSize: 18,
      color: Constants.primaryColor,
    ),
    displaySmall: TextStyle(
      fontSize: 16,
      color: Constants.primaryColor,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Constants.primaryColor,
    backgroundColor: Constants.primaryColor,
  ),
);
