import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/sharedList.dart';
import 'package:dogrudan_ticaret_sistemleri/widgets/prices_card.dart';
import 'package:flutter/material.dart';

class PricesPart extends StatelessWidget {
  final double height, width;
  const PricesPart({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selection = 0;
    List<List> menuSelection = [
      SharedList.priceMenuDomestic,
      SharedList.priceMenuAbroad,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          Constants.price,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    if (selection != 0) {
                      selection = 0;
                    }
                  },
                  child: const Text(
                    Constants.deomestic,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  width: width / 100,
                ),
                InkWell(
                  onTap: () {
                    if (selection != 1) {
                      selection = 1;
                    }
                  },
                  child: const Text(
                    Constants.abroad,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height / 50),
            SizedBox(
              width: width - width / 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < SharedList.priceMenuDomestic.length; i++)
                    PricesCard(
                      height: height,
                      width: width,
                      title: menuSelection[selection][i].title,
                      text: menuSelection[selection][i].text,
                    ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}


 // Row(
                //   children: [
                //     /// TODO List Selection
                //     for (int i = 0;
                //         i < SharedList.priceMenuDomestic.length;
                //         i++)
                //       PricesCard(
                //           height: height,
                //           width: width,
                //           title: menuSelection[selection][i].title,
                //           text: menuSelection[selection][i].text)
                //   ],
                // )