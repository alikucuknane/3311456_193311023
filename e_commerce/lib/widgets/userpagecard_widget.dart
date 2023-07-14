// Main Lib
import 'package:flutter/material.dart';
// UI
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// Other Lib
import 'package:e_commerce/shared/constants.dart';
import 'package:e_commerce/shared/sharedlist.dart';

class UserPageCardWidget extends StatelessWidget {
  final double height, width;
  const UserPageCardWidget({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.4,
      child: Card(
        color: Constants.textPrimaryColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            height * 0.025,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.04,
            horizontal: width * 0.01,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 2; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int j = 0; j < 3; j++)
                        Column(
                          children: [
                            Container(
                              height: height * 0.08,
                              width: height * 0.08,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constants.scaffoldPrimaryColor,
                              ),
                              child: Center(
                                child: FaIcon(
                                  SharedList.userPageCardItems[i][j].icon,
                                  color: Constants.textPrimaryColor,
                                  size: height * 0.03,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: height * 0.01,
                              ),
                              child: Text(
                                SharedList.userPageCardItems[i][j].text,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Constants.scaffoldPrimaryColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
