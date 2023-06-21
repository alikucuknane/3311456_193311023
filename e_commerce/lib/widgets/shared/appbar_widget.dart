// Main Lib
import 'package:flutter/material.dart';
// UI
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// Other
import 'package:e_commerce/widgets/appbartrailingicon_widget.dart';
import '../../pages/home_page.dart';

class AppBarWidget extends StatelessWidget {
  final double height;
  final List<String> text;
  final IconData trailingIcon;
  const AppBarWidget({
    required this.text,
    required this.height,
    required this.trailingIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FaIcon(
        trailingIcon,
      ),
      title: Center(
        child: Column(
          children: [
            for (int i = 0; i < text.length; i++)
              Text(
                text[i],
              ),
          ],
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBarTrailingIconWidget(
            icon: FontAwesomeIcons.cartShopping,
            widgetRoute: const HomePage(),
            height: height,
            counter: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: height * 0.02),
            child: AppBarTrailingIconWidget(
              icon: FontAwesomeIcons.bell,
              widgetRoute: const HomePage(),
              height: height,
              counter: 1,
            ),
          ),
        ],
      ),
    );
  }
}
