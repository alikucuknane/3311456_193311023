import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';

class SharedThemeData {
  static ThemeData theme = ThemeData(
    fontFamily: "ABeezee",
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontFamily: "ABeeZee",
        fontSize: 12,
        fontStyle: FontStyle.normal,
        color: Constants.textSecondaryColor,
      ),
      displayMedium: TextStyle(
        fontFamily: "ABeeZee",
        fontSize: 20,
        fontStyle: FontStyle.normal,
        color: Constants.textPrimaryColor,
      ),
      displayLarge: TextStyle(
        fontFamily: "ABeeZee",
        fontSize: 24,
        fontStyle: FontStyle.normal,
        color: Constants.textPrimaryColor,
      ),
    ),
  );
}
