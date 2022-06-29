import 'package:flutter/material.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          // App bar - back button & title & basket
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  // push home scren
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
                Center(
                  child: Text(
                    "Market",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                )
              ],
            ),
          ),
          // yurtiçi paketler
          // for set!
          Text(
            "Yurtiçi",
          ),
          for (int i = 0; i < 3; i++)
            Container(
              // height& widht
              height: height * 0.4,
              width: width * 0.3,
              decoration: BoxDecoration(
                /// TODO Radius
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Column(
                children: [
                  Image.network("src"),
                  Text("text"),
                  Center(
                    child: InkWell(
                      onTap: () {}, // TODO Add basket
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                  )
                ],
              ),
            ),
          // yurtdışı paketler
          Text(
            "Yurtiçi",
          ),
          for (int i = 0; i < 3; i++)
            Container(
              // height& widht
              height: height * 0.4,
              width: width * 0.3,
              decoration: BoxDecoration(
                /// TODO Radius
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
          // danışmanlık pakeleri
          Text(
            "Danışmanlık Paketleri",
          ),
          for (int i = 0; i < 3; i++)
            Container(
              // height& widht
              height: height * 0.4,
              width: width * 0.3,
              decoration: BoxDecoration(
                /// TODO Radius
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
