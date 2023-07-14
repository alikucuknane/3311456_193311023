import 'package:e_commerce/shared/sharedlist.dart';
import 'package:e_commerce/widgets/sharedcontainer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninSuccessPage extends StatelessWidget {
  const SigninSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
          ),
          child: Column(
            children: [
              // Logo
              //Container
              SharedContainerWidget(
                height: height,
                icon: FontAwesomeIcons.check,
                color: Colors.green,
              ),
              // Texts
              for (int i = 0; i < 2; i++)
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.02,
                  ),
                  child: Text(
                    SharedList.sigupSuccessTexts[i],
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: i == 0
                        ? Theme.of(context).textTheme.displayLarge
                        : Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontSize: 20,
                            ),
                  ),
                )
              // Contunie button
              ///TODO Singin Button
            ],
          ),
        ),
      ),
    );
  }
}
