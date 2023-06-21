import 'package:flutter/material.dart';

class UserPageMoneyUnitCardWidget extends StatelessWidget {
  const UserPageMoneyUnitCardWidget({
    super.key,
    required this.height,
    required this.width,
    required this.moneyUnit,
  });

  final double height;
  final double width;
  final String moneyUnit;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          height * 0.05,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.01,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              moneyUnit,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: const Icon(
                Icons.arrow_drop_down,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
