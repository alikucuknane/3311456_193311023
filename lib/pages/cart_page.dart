import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/shared/sharedlist.dart';
import 'package:dots_e_commerce/widgets/cartpage/appbar_widget.dart';
import 'package:dots_e_commerce/widgets/shared/button_wiget.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * Constants.genaralPadding,
          ),
          child: DraggableHome(
            headerExpandedHeight: 0.15,
            title: const CartPageDraggableHomeTitleWidget(),
            headerWidget: Padding(
              padding: EdgeInsets.only(
                top: height * Constants.genaralPadding,
              ),
              child: CartPageAppBarWidget(height: height, width: width),
            ),
            body: [
              for (int i = 0; i < 10; i++)
                CartPageCards(
                  height: height,
                  width: width,
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: width * Constants.genaralPadding,
          left: width * Constants.genaralPadding,
          right: width * Constants.genaralPadding,
        ),
        child: SharedButtonWidget(
          height: height,
          text: "Proceed to Checkout",
        ),
      ),
    );
  }
}

class CartPageDraggableHomeTitleWidget extends StatelessWidget {
  const CartPageDraggableHomeTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          for (int j = 0;
              j < SharedList.cartPageTitleListFakeData[1].length;
              j++)
            TextSpan(
              text: SharedList.cartPageTitleListFakeData[1][j],
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: j == 1 ? FontWeight.bold : FontWeight.normal,
                  ),
            ),
        ],
      ),
    );
  }
}

class CartPageCards extends StatelessWidget {
  const CartPageCards({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartPageTopCardWidget(height: height, width: width),
        CartPageBottomCardWidget(height: height, width: width),
      ],
    );
  }
}

class CartPageBottomCardWidget extends StatelessWidget {
  const CartPageBottomCardWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(height * Constants.genaralPadding),
          bottomRight: Radius.circular(height * Constants.genaralPadding),
        ),
        side: BorderSide(
          width: 0.5,
          color: Constants.secondaryColor.withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: width * Constants.genaralPadding * 1.5,
          horizontal: width * Constants.genaralPadding * 2,
        ),
        child: Row(
          children: [
            Row(
              children: [
                for (int i = 0; i < 3; i++)
                  i == 1
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * Constants.genaralPadding,
                          ),
                          child: Text(
                            "1",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Constants.whiteColor,
                            border: Border.all(
                              width: 2.5,
                              color: Constants.secondaryColor
                                  .withOpacity(i == 2 ? 0.6 : 0.3),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(
                              width * Constants.genaralPadding / 4,
                            ),
                            child: Icon(
                              i == 0 ? Icons.remove : Icons.add,
                              size: height * Constants.genaralPadding,
                              color: i == 2
                                  ? Constants.primaryColor
                                  : Constants.secondaryColor.withOpacity(0.3),
                            ),
                          ),
                        ),
              ],
            ),
            const Spacer(),
            Text(
              "Remove from cart",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Constants.secondaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartPageTopCardWidget extends StatelessWidget {
  const CartPageTopCardWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(height * Constants.genaralPadding),
          topLeft: Radius.circular(height * Constants.genaralPadding),
        ),
        side: BorderSide(
          width: 0.1,
          color: Constants.secondaryColor.withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: width * Constants.genaralPadding * 1.5,
          horizontal: width * Constants.genaralPadding * 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: height * Constants.generalHeight * 2,
              width: height * Constants.generalHeight * 2,
              child: Card(
                color: Constants.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    height * Constants.genaralPadding,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 3; i++)
                  i == 0
                      ? Row(
                          children: [
                            Text(
                              "Data",
                              style: Theme.of(context).textTheme.displayMedium,
                              softWrap: true,
                            ),
                            Card(
                              color: Colors.red[600],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  height * Constants.genaralPadding,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      width * Constants.genaralPadding * 1.5,
                                  vertical:
                                      width * Constants.genaralPadding / 1.5,
                                ),
                                child: Text(
                                  "-30%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        color: Constants.whiteColor,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Text(
                          "data",
                          style: i == 2
                              ? Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Constants.secondaryColor,
                                  )
                              : Theme.of(context).textTheme.displayMedium,
                        ),
              ],
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
