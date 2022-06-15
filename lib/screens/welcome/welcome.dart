import 'package:dogrudan_ticaret_sistemleri/parts/mutual/appbar.dart';
import 'package:dogrudan_ticaret_sistemleri/parts/welcome/entrance.dart';
import 'package:dogrudan_ticaret_sistemleri/parts/welcome/information.dart';
import 'package:dogrudan_ticaret_sistemleri/parts/welcome/prices.dart';
import 'package:dogrudan_ticaret_sistemleri/parts/welcome/services.dart';
import 'package:dogrudan_ticaret_sistemleri/widgets/welcome_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../parts/welcome/footer.dart';
import '../../parts/welcome/outlets.dart';
import '../../parts/welcome/referance.dart';
// import 'package:/dogrudan_ticaret_sistemleri/parts/welcome/parts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final List<Widget> partList = [
      ServicesPart(
        height: height,
        width: width,
      ),
      OutletPart(
        height: height,
        width: width,
      ),
      PricesPart(
        height: height,
        width: width,
      ),
      ReferancePart(
        height: height,
        width: width,
      ),
      FooterPart(
        height: height,
        width: width,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SafeArea(
            child: Column(
              children: [
                /// Parts

                /// Menu (App bar)
                Stack(
                  children: [
                    const AppBarPart(),

                    /// Enterance
                    EntrancePart(
                      height: height,
                      width: width,
                    ),
                    const AppBarPart(),
                  ],
                ),
                WelcomeSizedbox(height: height),

                /// Information
                InformationPart(
                  height: height,
                  width: width,
                ),
                WelcomeSizedbox(height: height),

                /// Parts
                for (int i = 0; i < partList.length; i++)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width / 50,
                          ),
                          partList[i],
                          SizedBox(
                            width: width / 50,
                          ),
                        ],
                      ),
                      WelcomeSizedbox(height: height),
                    ],
                  ),
                // WelcomeSizedbox(height: height),

                // /// Prices
                // PricesPart(
                //   height: height,
                //   width: width,
                // ),
                // WelcomeSizedbox(height: height),

                // /// Referance
                // ReferancePart(
                //   width: width,
                //   height: height,
                // ),
                // WelcomeSizedbox(height: height),

                // /// footer
                // FooterPart(
                //   height: height,
                //   width: width,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
