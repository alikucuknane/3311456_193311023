import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroScreenOnboarding(
          foregroundColor: Constants.primaryColor,
          introductionList: SharedList.introPageList,
          onTapSkipButton: () {
            Navigator.pushNamed(context, '/patternpage');
          },
          skipTextStyle: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
