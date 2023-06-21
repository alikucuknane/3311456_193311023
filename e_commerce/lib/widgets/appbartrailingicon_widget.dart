import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarTrailingIconWidget extends StatelessWidget {
  final IconData icon;
  final Widget widgetRoute;
  final double height;
  final int counter;
  const AppBarTrailingIconWidget({
    required this.icon,
    required this.widgetRoute,
    required this.height,
    required this.counter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widgetRoute),
        );
      },
      child: Stack(
        children: [
          SizedBox(
            height: height * 0.035,
            width: height * 0.035,
          ),
          //Icon
          Positioned(
            bottom: 0,
            child: FaIcon(
              icon,
              size: height * 0.025,
            ),
          ),
          // Number
          counter > 0
              ? Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: height * 0.02,
                    width: height * 0.02,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.scaffoldPrimaryColor,
                    ),
                    child: Center(
                      child: Container(
                        height: height * 0.0175,
                        width: height * 0.0175,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Constants.orangeColor,
                        ),
                        child: Center(
                          child: Text(
                            counter.toString(),
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Constants.scaffoldPrimaryColor,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
