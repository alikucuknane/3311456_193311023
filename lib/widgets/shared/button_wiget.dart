import 'package:dots_e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';

class SharedButtonWidget extends StatelessWidget {
  final double height;
  final String text;
  const SharedButtonWidget({
    required this.height,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * Constants.generalHeight,
      child: Card(
        color: Constants.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            height * Constants.genaralPadding,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Constants.whiteColor,
                ),
          ),
        ),
      ),
    );
  }
}
