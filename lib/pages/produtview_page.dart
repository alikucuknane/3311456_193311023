import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/widgets/shared/button_wiget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({super.key});

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(height * Constants.genaralPadding * 2),
            topRight: Radius.circular(height * Constants.genaralPadding * 2),
          ),
          panel: Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * Constants.genaralPadding,
              horizontal: height * Constants.genaralPadding * 1.5,
            ),
            child: Column(
              children: [
                // Container
                Container(
                  width: width * 0.15,
                  height: width * Constants.genaralPadding / 2.5,
                  decoration: BoxDecoration(
                    color: Constants.secondaryColor,
                    borderRadius: BorderRadius.circular(
                      width * Constants.genaralPadding / 1.25,
                    ),
                  ),
                ),
                // Title
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * Constants.genaralPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 2; i++)
                        Column(
                          children: [
                            for (int j = 0; j < 2; j++)
                              Text(
                                "data",
                                style: j == 0
                                    ? Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                          color: Constants.secondaryColor,
                                        )
                                    : Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                              ),
                          ],
                        ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      height * Constants.generalHeight,
                    ),
                    side: BorderSide(
                      width: 1.0,
                      color: Constants.secondaryColor.withOpacity(0.2),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: height * Constants.genaralPadding,
                      vertical: width * Constants.genaralPadding * 1.5,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Constants.secondaryColor,
                          radius: height * Constants.genaralPadding,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * Constants.genaralPadding,
                          ),
                          child: Text(
                            "Watch Store",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.comment,
                              color: Constants.primaryColor,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: height * Constants.genaralPadding / 1.5,
                                width: height * Constants.genaralPadding / 1.5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Constants.secondaryColor,
                                  border: Border.all(
                                    width: 1,
                                    color: Constants.whiteColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height * Constants.genaralPadding,
                      ),
                      child: Text(
                        "Quartz movement with analog-digital display. shockproof, military resin reinforced.",
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: Constants.secondaryColor,
                                ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                for (int i = 0; i < 2; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Color :",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: width * Constants.genaralPadding,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int j = 0; j < 10; j++)
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: j == 0
                                        ? 0
                                        : width * Constants.genaralPadding,
                                  ),
                                  child: Container(
                                    height:
                                        height * Constants.generalHeight / 1.25,
                                    width:
                                        height * Constants.generalHeight / 1.25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        width * Constants.genaralPadding,
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: Constants.primaryColor,
                                      ),
                                      color: Constants.whiteColor,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          width * Constants.genaralPadding / 4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            width *
                                                Constants.genaralPadding /
                                                1.15,
                                          ),
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
          // Page view TODO
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 4; i++) const Placeholder(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: width * Constants.genaralPadding,
          right: width * Constants.genaralPadding,
          left: width * Constants.genaralPadding,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: SharedButtonWidget(
                height: height,
                text: "Add to Card",
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: height * Constants.generalHeight,
                width: height * Constants.generalHeight,
                decoration: const BoxDecoration(
                  color: Constants.secondaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Constants.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
