import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';

class CartPageAppBarWidget extends StatelessWidget {
  const CartPageAppBarWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: height * Constants.generalHeight / 2,
          backgroundColor: Constants.primaryColor,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width * Constants.genaralPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 2; i++)
                RichText(
                  text: TextSpan(
                    children: [
                      for (int j = 0;
                          j < SharedList.cartPageTitleListFakeData[i].length;
                          j++)
                        TextSpan(
                          text: SharedList.cartPageTitleListFakeData[i][j],
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                fontWeight: j == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
