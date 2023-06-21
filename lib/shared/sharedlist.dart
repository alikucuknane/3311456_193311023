import 'package:e_commerce/models/loginpageicon_model.dart';
import 'package:e_commerce/models/loginpagetextfield_model.dart';
import 'package:e_commerce/models/usepage_model.dart';
import 'package:e_commerce/pages/orders_page.dart';
import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SharedList {
  static const List<IconData> iconList = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.user,
  ];

  // User Page (Profil Page)
  static List<UserPageModel> row1CardItems = [
    // Order
    UserPageModel(
      text: "Order",
      icon: FontAwesomeIcons.basketShopping,
      routeWidget: const OrdersPage(),
    ),
    // Scan
    UserPageModel(
      text: "Scan",
      icon: FontAwesomeIcons.barcode,
      routeWidget: const OrdersPage(),
    ),
    // Settings
    UserPageModel(
      text: "Settings",
      icon: FontAwesomeIcons.gear,
      routeWidget: const OrdersPage(),
    ),
  ];
  static List<UserPageModel> row2CardItems = [
    // Order
    UserPageModel(
      text: "Payment",
      icon: FontAwesomeIcons.creditCard,
      routeWidget: const OrdersPage(),
    ),
    // Scan
    UserPageModel(
      text: "Terms",
      icon: FontAwesomeIcons.file,
      routeWidget: const OrdersPage(),
    ),
    // Settings
    UserPageModel(
      text: "Logout",
      icon: FontAwesomeIcons.powerOff,
      routeWidget: const OrdersPage(),
    ),
  ];
  static List<List<UserPageModel>> userPageCardItems = [
    row1CardItems,
    row2CardItems
  ];

  // Product Page
  static const List<String> productColorandSize = [
    "Color :",
    "Select Size :",
  ];
  static const List<String> productBottomTexts = [
    "Add to Cart",
    "Check Out",
  ];

  // Login Page
  static List<LoginPageTextfieldModel> loginPageTextFieldList = [
    LoginPageTextfieldModel(
      labelText: "E-mail",
      initialValue: "Enter mail",
    ),
    LoginPageTextfieldModel(
      labelText: "Password",
      initialValue: "Enter Password",
      icons: [
        FontAwesomeIcons.eye,
        FontAwesomeIcons.eyeSlash,
      ],
    ),
  ];
  static List<LoginPageTextfieldModel> logupPageTextFieldList = [
    LoginPageTextfieldModel(
      labelText: "Name",
      initialValue: "Enter name",
    ),
    LoginPageTextfieldModel(
      labelText: "E-mail",
      initialValue: "Enter mail",
    ),
    LoginPageTextfieldModel(
      labelText: "Password",
      initialValue: "Enter Password",
      icons: [
        FontAwesomeIcons.eye,
        FontAwesomeIcons.eyeSlash,
      ],
    ),
    LoginPageTextfieldModel(
      labelText: "Date of Birth",
      initialValue: "Enter Birth",
    ),
  ];

  static List<List<LoginPageTextfieldModel>> loginTextsList = [
    loginPageTextFieldList,
    logupPageTextFieldList
  ];
  static List<LoginPageIconModel> loginorLoginButtons = [
    LoginPageIconModel(
      icon: FontAwesomeIcons.google,
      iconColor: Constants.orangeColor,
    ),
    LoginPageIconModel(
      icon: FontAwesomeIcons.facebook,
      iconColor: Colors.blue,
    ),
    LoginPageIconModel(
      icon: FontAwesomeIcons.twitter,
      iconColor: Colors.blue,
    )
  ];
  static List<String> loginorup = [
    "Sign in",
    "Sign up",
  ];
  static List<String> loginText = [
    "Sign in to continue",
    "Sign up",
  ];
  static List<List<String>> loginBottomTextList = [
    [
      "Don’t have account? ",
      "Sign up.",
    ],
    [
      "Have an account? ",
      "Sign in.",
    ],
  ];

  // Signup Success
  static List<String> sigupSuccessTexts = [
    "Your account successfully created!",
    "We’ve sent activation link to your email."
  ];
}
