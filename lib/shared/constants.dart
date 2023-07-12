import 'package:flutter/material.dart';

import '../services/materialcolorgenarator_service.dart';

class Constants {
  // UI
  static const double genaralPadding = 0.02;
  static const double generalHeight = 0.08;
  // UI
  static const Color primaryScaffoldColor = Colors.white;
  static const Color primaryColor = Colors.black87;
  static const Color secondaryColor = Colors.black54;
  static const Color whiteColor = Colors.white;
  static const Color whiteColorRGB = Color.fromARGB(255, 255, 255, 255);
  static MaterialColor whiteColorMaterialColor =
      MaterialColorGenerator.from(whiteColorRGB);
  // Home Page
  // Scan Page
  static const String scanImage = "assets/images/scan_container.png";
}
