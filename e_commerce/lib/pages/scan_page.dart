import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
            ),
            // Camera
            //TODO

            // App bar
            Positioned(
              top: height * 0.025,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                ),
                child: const ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.circleXmark,
                  ),
                  title: Text(
                    "Scan",
                  ),
                ),
              ),
            ),
            // Scan İmage
          ],
        ),
      ),
    );
  }
}
