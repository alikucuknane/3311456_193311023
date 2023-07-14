import 'package:e_commerce/shared/constants.dart';
import 'package:e_commerce/widgets/bottomnavbarwidget.dart';
import 'package:e_commerce/widgets/entrancecategories_widget.dart';
import 'package:e_commerce/widgets/livediscount_widget.dart';
import 'package:e_commerce/widgets/shared/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/entrancecard_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
    // int bottomNavIndex = 0;
    return Scaffold(
      body: SafeArea(
        // Listview Builder
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.075,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // App Bar
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: AppBarWidget(
                    text: const [
                      "Good Morning!",
                      "Ali Küçüknane",
                    ],
                    height: height,
                    trailingIcon: FontAwesomeIcons.bars,
                  ),
                ),
                // Search and filters
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: const SearchandFilterWidget(),
                ),
                // News and Limeted Card
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: NewsandLimetedCardWidget(
                    height: height,
                  ),
                ),
                // Entrance Card Widget
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: EntanceCardWidget(height: height, width: width),
                ),
                // Categories (Man, Women, Child)
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: EntranceCategoriesWidget(width: width, height: height),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: Column(
                    children: [
                      for (int i = 0; i < 2; i++)
                        Row(
                          children: [
                            for (int j = 0; j < 2; j++)
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      // Card (Image)
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            height * 0.02,
                                          ),
                                        ),
                                        child: SizedBox(
                                          height: height * 0.2,
                                          width: (width - (width * 0.2)) / 2,
                                          child: const Placeholder(),
                                        ),
                                      ),
                                      // Circle Favorite
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Constants.textSecondaryColor,
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Constants
                                                  .scaffoldPrimaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: (width - (width * 0.2)) / 2,
                                    child: Text(
                                      "Short Sleeve V-Collar Dry Color T-Shirt",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(fontSize: 14),
                                      softWrap: true,
                                    ),
                                  ),
                                  SizedBox(
                                    width: (width - (width * 0.2)) / 2,
                                    child: const Row(
                                      children: [
                                        Text(
                                          "\$25",
                                        ),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              "4.5",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                          ],
                        )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: const LiveDiscountWidget(),
                ),

                /// Categories
                /// Products (single child widget)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 10; i++)
                        const Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text("data")),
                          ),
                        ),
                    ],
                  ),
                ),
                // Products
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              height * 0.02,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: height * 0.2,
                                    width: height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(
                                        height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: -height * 0.0125,
                                    top: 0,
                                    child: Container(
                                      width: width * 0.175,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          height * 0.05,
                                        ),
                                        color: Colors.grey,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            "-30%",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: height * 0.01,
                                    bottom: height * 0.01,
                                    child: Container(
                                      // height: height * 0.025,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.02,
                                ),
                                child: const Text(
                                  "Ipad pro 2015",
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.keyboard_voice,
        ),
        onPressed: () => {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        height: height,
        width: width,
        bottomNavIndex: 0,
      ),
    );
  }
}

class NewsandLimetedCardWidget extends StatelessWidget {
  const NewsandLimetedCardWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: height * 0.06,
      child: Row(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    height * 0.03,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "data",
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class SearchandFilterWidget extends StatelessWidget {
  const SearchandFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 4,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Search",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.filter_alt_rounded,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
