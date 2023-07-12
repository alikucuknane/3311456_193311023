import 'package:dots_e_commerce/pages/home_page.dart';
import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomePageAppBar(width: width, height: height),
            Padding(
              padding: EdgeInsets.only(
                top: height * Constants.genaralPadding,
              ),
              child: ProfilePageAvatarWidget(height: height),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * Constants.genaralPadding,
              ),
              child: SizedBox(
                width: width * 0.5,
                child: Center(
                  child: Flexible(
                    child: Text(
                      "Ali Küçüknane",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                      softWrap: true,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Berlin, German",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
            ),
            SizedBox(
              width: width * 0.3,
              child: Card(
                color: Constants.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    height * Constants.genaralPadding * 2,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(height * Constants.genaralPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "EUR",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * Constants.genaralPadding,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * Constants.generalHeight,
            ),
            SizedBox(
              height: height * 0.5,
              child: Card(
                color: Constants.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    height * Constants.generalHeight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 3; i++)
                      i == 2
                          ? SizedBox(
                              height: width * Constants.genaralPadding,
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (int j = 0; j < 3; j++)
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Constants.whiteColor,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                            height *
                                                Constants.genaralPadding *
                                                1.5,
                                          ),
                                          child: SharedList
                                              .profilePageCardList[i][j]
                                              .iconWidget,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: width * Constants.genaralPadding,
                                        ),
                                        child: Text(
                                          SharedList
                                              .profilePageCardList[i][j].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(
                                                color: Constants.whiteColor,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePageAvatarWidget extends StatelessWidget {
  const ProfilePageAvatarWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height * 0.15,
          // width: height * Constants.generalHeight,
        ),
        CircleAvatar(
          radius: height * Constants.generalHeight,
          backgroundColor: Constants.secondaryColor,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Constants.primaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(
                height * Constants.genaralPadding,
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Constants.whiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
