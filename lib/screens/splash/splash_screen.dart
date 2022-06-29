import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final String text, splashImageRoute;
  final double height, widht;
  final int screenCounter;
  const SplashScreen({
    required this.height,
    required this.widht,
    required this.splashImageRoute,
    required this.text,
    required this.screenCounter,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            splashImageRoute,
          ),
          Text(
            text,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_rounded,
                ),
              ),
              for (int i = 0; i < 3; i++)
                Container(
                  height: screenCounter == i ? height * 0.15 : height * 0.1,
                  margin: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                    color: screenCounter == i ? Colors.white : Colors.white60,
                    shape: BoxShape.circle,
                  ),
                ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
            ],
          )
          // InkWell(child: ,)
        ],
      ),
    );
  }
}
