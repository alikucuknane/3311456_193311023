import 'package:dogrudan_ticaret_sistemleri/screens/welcome/welcome.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dogrudan Ticaret Sistemleri',
      theme: UIThemes.mainTheme,
      home: const WelcomeScreen(),
    );
  }
}
