// Main Lib
import 'package:e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';
// Other Lib
import 'package:e_commerce/shared/constants.dart';
import 'package:e_commerce/widgets/product_page/bottomnavbar_widget.dart';
import 'package:e_commerce/widgets/product_page/imagestack_widget.dart';

class ProductViewPage extends StatelessWidget {
  const ProductViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Product Image
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.01,
              ),
              child: ProductImageStackWidget(height: height, width: width),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.075,
              ),
              child: Column(
                children: [
                  // Sold and ready stock
                  // Row
                  Row(
                    children: [
                      for (int i = 0; i < 2; i++)
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.01,
                            left: i == 0 ? 0 : width * 0.02,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: i == 0 ? "128 " : "• 320 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(fontSize: 12),
                              children: [
                                TextSpan(
                                  text: i == 0 ? "Sold" : "Ready Stock",
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),

                  ///-------------------------
                  /// Product Title and price
                  /// ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                      bottom: height * 0.04,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Long Sleeve Sweat Cardigan (Indigo)",
                            softWrap: true,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              for (int i = 0; i < 2; i++)
                                i == 0
                                    ? Stack(
                                        children: [
                                          Text(
                                            "\$40",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Positioned(
                                            top: width * 0.015,
                                            child: Container(
                                              height: height * 0.0015,
                                              width: width * 0.08,
                                              color:
                                                  Constants.textSecondaryColor,
                                            ),
                                          )
                                        ],
                                      )
                                    : Text(
                                        "\$25",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              fontSize: 28,
                                            ),
                                      )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // Details and Review
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        for (int i = 0; i < 2; i++)
                          Padding(
                            padding: EdgeInsets.only(
                              left: i == 0 ? 0 : width * 0.04,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Details",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                i == 0
                                    ? Container(
                                        width: width * 0.1,
                                        height: height * 0.001,
                                        color: Constants.textSecondaryColor,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.02,
                    ),
                    child: Text(
                      "Cardigans for Men and Women in textured fabric and indigo color. Basic design that is easy to match.",
                      softWrap: true,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                    ),
                  ),
                  // Color and Size
                  // Row
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < 2; i++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                SharedList.productColorandSize[i],
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 24,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.02,
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      for (int j = 0; j < 5; j++)
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: j == 0 ? 0 : width * 0.02,
                                          ),
                                          child: i == 0
                                              ? Container(
                                                  height: height * 0.06,
                                                  width: height * 0.06,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      height * 0.01,
                                                    ),
                                                    color: Colors.amber,
                                                  ),
                                                )
                                              : Container(
                                                  height: height * 0.06,
                                                  width: height * 0.06,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      height * 0.01,
                                                    ),
                                                    color: Constants
                                                        .scaffoldPrimaryColor,
                                                    border: Border.all(
                                                      color: Constants
                                                          .textSecondaryColor,
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "XXL",
                                                    ),
                                                  ),
                                                ),
                                        ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          ProductBottomNavBarWidget(height: height, width: width),
    );
  }
}
