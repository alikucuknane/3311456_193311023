import 'package:dots_e_commerce/pages/bottomnavbarpattern_page.dart';
import 'package:dots_e_commerce/pages/cart_page.dart';
import 'package:dots_e_commerce/pages/home_page.dart';
import 'package:dots_e_commerce/pages/intro_page.dart';
import 'package:dots_e_commerce/pages/produtview_page.dart';
import 'package:dots_e_commerce/shared/themedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/splashpage': (context) => const SplashPage(),
        '/intropage': (context) => const IntroPage(),
        '/patternpage': (context) => const BottomNavBarPatternPage(),
        '/homepage': (context) => const HomePage(),
        '/cartpage': (context) => const CartPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(),
                body: const Center(
                  child: Text('Birşeyler ters gitti'),
                ),
              )),
      theme: sharedTheme,
      home: InteractiveViewer(),
    );
  }
}
