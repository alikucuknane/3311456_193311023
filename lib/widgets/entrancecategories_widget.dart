import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';

class EntranceCategoriesWidget extends StatelessWidget {
  const EntranceCategoriesWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 3; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Man",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.04),
                      child: Container(
                        height: height * 0.03,
                        width: height * 0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Constants.scaffoldPrimaryColor,
                          border: Border.all(
                            color: Constants.textSecondaryColor,
                          ),
                        ),
                        child: Expanded(
                          child: Icon(
                            Icons.arrow_outward_sharp,
                            size: height * 0.02,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                i == 0
                    ? Container(
                        width: width * 0.1,
                        height: height * 0.005,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(
                            height * 0.005,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            )
        ],
      ),
    );
  }
}
