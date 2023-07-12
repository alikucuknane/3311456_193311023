import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_decoration/icon_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * Constants.genaralPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App bar
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * Constants.genaralPadding,
              ),
              child: HomePageAppBar(width: width, height: height),
            ),
            // Search Bar
            HomePageSearchBar(),
            // Category
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * Constants.genaralPadding / 2,
              ),
              child: HomePageCategoriesWidget(
                height: height,
                width: width,
                title: SharedList.homePageEntranceList,
              ),
            ),

            // Entrance Card
            HomePageEnrtanceCardWidget(height: height),

            // Product
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * Constants.genaralPadding,
              ),
              child: HomePageProductTitleWidget(width: width, height: height),
            ),
            HomePageProductWidget(height: height, width: width),
            // Live Discount
            HomePageLiveDiscountWidget(
              widht: width,
            ),
            HomePageLiveDiscountCategoriesWidget(width: width, height: height),
            // Product
            HomePageLiveDiscountProductWidget(height: height, width: width),
          ],
        ),
      ),
    );
  }
}

class HomePageLiveDiscountProductWidget extends StatelessWidget {
  const HomePageLiveDiscountProductWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: height * Constants.genaralPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: EdgeInsets.only(
                  left: i == 0 ? 0 : height * Constants.genaralPadding,
                ),
                child: Card(
                  // margin: EdgeInsets.zero,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      height * Constants.genaralPadding,
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: height * 0.2,
                            width: height * 0.2,
                            child: Card(
                              margin: EdgeInsets.zero,
                              color: Constants.secondaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  height * Constants.genaralPadding,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: width * Constants.genaralPadding,
                            right: width * Constants.genaralPadding,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constants.whiteColor,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(
                                  width * Constants.genaralPadding,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Constants.primaryColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: height * Constants.genaralPadding,
                          ),
                          child: Text(
                            "Ipad pro 2015",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class HomePageLiveDiscountCategoriesWidget extends StatelessWidget {
  const HomePageLiveDiscountCategoriesWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int i = 0; i < SharedList.homePageCategoriesList.length; i++)
            Padding(
              padding: EdgeInsets.only(
                left: i == 0 ? 0 : width * Constants.genaralPadding,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    height * Constants.genaralPadding,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * Constants.genaralPadding / 1.25,
                    horizontal: height * Constants.genaralPadding * 2,
                  ),
                  child: Text(
                    SharedList.homePageCategoriesList[i],
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

class HomePageCategoriesWidget extends StatelessWidget {
  const HomePageCategoriesWidget({
    required this.height,
    required this.width,
    required this.title,
    super.key,
  });

  final double height, width;
  final List<String> title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < title.length; i++)
          Expanded(
            child: SizedBox(
              height: height * Constants.generalHeight / 1.25,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    width * Constants.genaralPadding * 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    title[i],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class HomePageLiveDiscountWidget extends StatelessWidget {
  final double widht;
  const HomePageLiveDiscountWidget({
    required this.widht,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Live discount",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: widht * Constants.genaralPadding,
              ),
              child: FaIcon(
                FontAwesomeIcons.fire,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Text(
          "View All",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Constants.primaryColor.withOpacity(
                  0.8,
                ),
              ),
        ),
      ],
    );
  }
}

class HomePageProductWidget extends StatelessWidget {
  const HomePageProductWidget({
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
        for (int i = 0; i < 3; i++)
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                i != 1
                    ? Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: height * 0.225,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                      height * Constants.genaralPadding,
                                    )),
                                    child: Placeholder(),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Constants.whiteColor,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: Constants.primaryColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                        width * Constants.genaralPadding,
                                      ),
                                      // child: Icon(

                                      child: DecoratedIcon(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Constants.whiteColor,
                                        ),
                                        decoration: IconDecoration(
                                          border: IconBorder(width: 2.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Short Sleeve V-Collar Dry Color T-Shirt",
                              softWrap: true,
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$25",
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[800],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: width * Constants.genaralPadding,
                                      ),
                                      child: Text(
                                        "4.5",
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    : SizedBox(
                        width: width * Constants.genaralPadding,
                      )
            ],
          ),
      ],
    );
  }
}

class HomePageProductTitleWidget extends StatelessWidget {
  const HomePageProductTitleWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 3; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "data",
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * Constants.genaralPadding,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 0.5,
                          color: Constants.primaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          width * Constants.genaralPadding / 2,
                        ),
                        child: Icon(
                          Icons.north_east,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: width * Constants.genaralPadding / 2,
                width: height * Constants.genaralPadding * 2,
                decoration: BoxDecoration(
                  color: Constants.primaryColor.withOpacity(
                    0.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    width * Constants.genaralPadding / 4,
                  ),
                ),
              )
            ],
          )
      ],
    );
  }
}

class HomePageEnrtanceCardWidget extends StatelessWidget {
  const HomePageEnrtanceCardWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Constants.primaryColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          height * Constants.genaralPadding,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height * Constants.generalHeight / 2,
          horizontal: height * Constants.genaralPadding,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "LIMITED COLLECTION",
                softWrap: true,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Constants.whiteColor,
                    ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(height: height * 0.15, child: Placeholder()),
            )
          ],
        ),
      ),
    );
  }
}

class HomePageSearchBar extends StatelessWidget {
  const HomePageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                  ),
                  // TextField(),
                  Text(
                    "Search",
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: FaIcon(
                  FontAwesomeIcons.filter,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FaIcon(
          FontAwesomeIcons.bars,
        ),
        Column(
          children: [
            for (int i = 0; i < 2; i++)
              Text(
                "data",
              ),
          ],
        ),
        Row(
          children: [
            for (int i = 0; i < 2; i++)
              Padding(
                padding: EdgeInsets.only(
                  left: i == 0 ? 0 : width * Constants.genaralPadding,
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: height * 0.04,
                      width: height * Constants.genaralPadding * 2.5,
                    ),
                    Positioned(
                      bottom: 0,
                      child: FaIcon(
                        FontAwesomeIcons.basketShopping,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            width * Constants.genaralPadding,
                          ),
                          child: Text(
                            "1",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ],
        )
      ],
    );
  }
}
