import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/sharedList.dart';
import 'package:flutter/material.dart';

class OutletPart extends StatelessWidget {
  final double height, width;
  const OutletPart({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int menuSelected = 0; // "Yurtiçi" selected
    int subtitleSelected = 0;
    int selectionOutlets = 0;
    List<List> menuSelection = [
      SharedList.outletsDomesticList,
      SharedList.outletsAbroadList,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          Constants.outletsTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: height / 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              /// TODO Function
              onTap: () {},
              child: Text(
                Constants.outletsMenu0,
                style: TextStyle(
                  color: menuSelected == 0 ? Colors.white : Colors.white30,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: width / 125,
            ),
            InkWell(
              /// TODO Function
              onTap: () {},
              child: Text(
                Constants.outletsMenu1,
                style: TextStyle(
                  color: menuSelected == 1 ? Colors.white : Colors.white30,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < menuSelection[menuSelected].length; i++)
              InkWell(
                /// TODO Function
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: i == 0 ? 0 : width / 150,
                    ),
                    Text(
                      menuSelection[menuSelected][i].title,
                      style: TextStyle(
                        color: selectionOutlets == i
                            ? Colors.white
                            : Colors.white30,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        SizedBox(
          height: height / 50,
        ),
        Stack(
          children: [
            Container(
              height: 3 * (height / 4.5),
              width: width - width / 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(height / 50),
              ),
              child: Center(
                  child:
                      Text(menuSelection[menuSelected][subtitleSelected].text)),
            ),
            Positioned(
              right: width / 75,
              bottom: height / 50,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: height / 20,
                  width: width / 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height / 50),
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Text(
                      Constants.letsCallYouButton,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
