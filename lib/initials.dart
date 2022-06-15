/// TODO Export
//import 'dogrudan_ticaret_sistemleri/shared/shared_welcome_screen';
// Screens

// Welcome
import 'package:dogrudan_ticaret_sistemleri/screens/welcome/user_login.dart';
import 'package:dogrudan_ticaret_sistemleri/screens/welcome/welcome.dart';
import 'package:dogrudan_ticaret_sistemleri/screens/welcome/dashboard.dart';
import 'package:dogrudan_ticaret_sistemleri/screens/welcome/sign_up.dart';

// Admin
import 'package:dogrudan_ticaret_sistemleri/screens/admin/admin_dashboard.dart';
import 'package:dogrudan_ticaret_sistemleri/screens/admin/admin_login.dart';
import 'package:dogrudan_ticaret_sistemleri/screens/admin/admin_sign_up.dart';

//
import 'package:flutter/material.dart';

class Initials {
  static const String appName = "Doğrudan Ticaret Sistemleri";

  // static final List<SingleChildWidget> providers = [
  //   ChangeNotifierProvider(create: (context) => LocalizationService()),
  // ];

  static final Map<String, Widget Function(BuildContext)> routes = {
    "/": (context) => const WelcomeScreen(),
    "/login": (context) => const LoginScreen(),
    "/sign_up": (context) => const SignUpScreen(),
    "/dashboard": (context) => const UserDashboardScreen(),
    "/admin_login": (context) => const AdminLoginScreen(),
    "/admin/sign_up": (context) => const AdminSignUpScreen(),

    "/admin/dashboard": (context) => const AdminDasboardScreen(),
    // "/admin/dashboard/add_company": (context) => const ,
    //"/admin": (context) => const AdminLoginScreen(),
  };
}
