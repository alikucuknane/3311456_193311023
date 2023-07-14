// Main Library
import 'package:e_commerce/pages/home_page.dart';
// import 'package:e_commerce/pages/productview_page.dart';
import 'package:e_commerce/shared/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Other Library
// import 'package:e_commerce/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'E Commerce',
      theme: SharedThemeData.theme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
