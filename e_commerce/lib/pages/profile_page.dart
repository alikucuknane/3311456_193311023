// Main Lib
import 'package:e_commerce/widgets/bottomnavbarwidget.dart';
import 'package:e_commerce/widgets/profile_page/moneyunitcard_widget.dart';
import 'package:e_commerce/widgets/profile_page/profilecicrleavatar_widget.dart';
import 'package:flutter/material.dart';
// Other Lib
import 'package:e_commerce/widgets/userpagecard_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:e_commerce/widgets/shared/appbar_widget.dart';

class ProfilePage extends StatelessWidget {
  final String userName, profilePhotoUrl, location;
  final String moneyUnit;
  const ProfilePage({
    required this.userName,
    required this.profilePhotoUrl,
    required this.location,
    required this.moneyUnit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // App bar widget
            AppBarWidget(
              text: const ["Profile"],
              height: height,
              trailingIcon: FontAwesomeIcons.arrowLeft,
            ),
            // Stack
            ProfileCircleAvatarWidget(
              userName: userName,
              profilePhotoUrl: profilePhotoUrl,
              height: height,
              width: width,
            ),
            // User name
            Column(
              children: [
                for (int i = 0; i < 2; i++)
                  Text(
                    i == 0 ? userName : location,
                    softWrap: true,
                    style: i == 0
                        ? Theme.of(context).textTheme.displayLarge
                        : Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 17),
                  ),
                // User money unit
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: UserPageMoneyUnitCardWidget(
                    height: height,
                    width: width,
                    moneyUnit: moneyUnit,
                  ),
                ),
              ],
            ),
            // Card widget
            UserPageCardWidget(height: height, width: width),
          ],
        ),
      ),
      // Bottom nav. bar
      // bottomNavigationBar: ,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.keyboard_voice,
        ),
        onPressed: () => {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        height: height,
        width: width,
        bottomNavIndex: 0,
      ),
    );
  }
}
