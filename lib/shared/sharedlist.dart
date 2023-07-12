import 'package:dots_e_commerce/models/profilepagecard_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';

class SharedList {
  // Shared
  static List<IconData> bottommBarItems = [
    Icons.home,
    Icons.explore_outlined,
    Icons.mail_outline,
    Icons.person_outline_rounded,
  ];
  // Intro Page
  static List<Introduction> introPageList = [
    Introduction(
      title: 'Auction houses from\narround the world',
      subTitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,',
      imageUrl: 'assets/images/intro_image1.png',
    ),
    Introduction(
      title: 'Buy art from premier\ngalleries Bidart',
      subTitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,',
      imageUrl: 'assets/images/intro_image2.png',
    ),
    Introduction(
      title: 'Upload and cell your\nbest work exploration',
      subTitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,',
      imageUrl: 'assets/images/intro_image3.png',
    ),
  ];
  // Home Page
  static List<String> homePageEntranceList = [
    "LIMITED",
    "RECOMENDED",
    "NEW IN",
  ];
  static List<String> homePageCategoriesList = [
    "Clothing",
    "Gadget",
    "Gaming",
    "Fashion"
  ];
  // Profile Page
  static List<List<ProfilePageCardModel>> profilePageCardList = [
    [
      ProfilePageCardModel(
        title: "Purchases",
        iconWidget: const FaIcon(
          FontAwesomeIcons.basketShopping,
        ),
      ),
      ProfilePageCardModel(
        title: "Scan",
        iconWidget: const FaIcon(
          FontAwesomeIcons.barcode,
        ),
      ),
      ProfilePageCardModel(
        title: "Settings",
        iconWidget: const FaIcon(
          FontAwesomeIcons.gear,
        ),
      ),
    ],
    [
      ProfilePageCardModel(
        title: "Payment",
        iconWidget: const FaIcon(
          FontAwesomeIcons.creditCard,
        ),
      ),
      ProfilePageCardModel(
        title: "Terms",
        iconWidget: const FaIcon(
          FontAwesomeIcons.fileContract,
        ),
      ),
      ProfilePageCardModel(
        title: "Logout",
        iconWidget: FaIcon(
          FontAwesomeIcons.powerOff,
        ),
      ),
    ]
  ];
  // Cart Page
  static const List<List<String>> cartPageTitleListFakeData = [
    [
      "Hello ",
      "Ali Küçüknane,",
    ],
    [
      "You have ",
      "3",
      " items in cart",
    ],
  ];
}
