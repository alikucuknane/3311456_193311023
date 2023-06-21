import 'package:e_commerce/pages/login_page.dart';
import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height,
    //     width = MediaQuery.of(context).size.width;
    final List<Introduction> list = [
      Introduction(
        title: 'Auction houses from\narround the world',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,',
        imageUrl: 'assets/images/onboardingpage/onboarding1.png',
      ),
      Introduction(
        title: 'Buy art from premier\ngalleries Bidart',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,',
        imageUrl: 'assets/images/onboardingpage/onboarding2.png',
      ),
      Introduction(
        title: 'Upload and cell your\nbest work exploration',
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,',
        imageUrl: 'assets/images/onboardingpage/onboarding3.png',
      ),
    ];
    return IntroScreenOnboarding(
      backgroudColor: Constants.scaffoldPrimaryColor,
      foregroundColor: Constants.textSecondaryColor,
      skipTextStyle: Theme.of(context).textTheme.displayMedium,
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
