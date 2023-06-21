import 'package:e_commerce/shared/constants.dart';
import 'package:e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductBottomNavBarWidget extends StatelessWidget {
  final double height;
  final double width;
  const ProductBottomNavBarWidget({
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: height * 0.01,
        left: height * 0.01,
        right: height * 0.01,
      ),
      child: Row(
        children: [
          for (int i = 0; i < 2; i++)
            Expanded(
              child: SizedBox(
                height: height * 0.08,
                child: Card(
                  color: i == 0
                      ? Constants.scaffoldPrimaryColor
                      : Constants.textPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      height * 0.02,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        i == 0
                            ? const FaIcon(
                                FontAwesomeIcons.basketShopping,
                              )
                            : const SizedBox(),
                        Padding(
                          padding: EdgeInsets.only(
                            left: i == 0 ? width * 0.04 : 0,
                          ),
                          child: Text(
                            SharedList.productBottomTexts[i],
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  color: i == 0
                                      ? Constants.textPrimaryColor
                                      : Constants.scaffoldPrimaryColor,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
