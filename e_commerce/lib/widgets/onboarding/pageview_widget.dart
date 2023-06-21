import 'package:flutter/material.dart';

class OnboardingPageViewWidget extends StatelessWidget {
  const OnboardingPageViewWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height * 0.4,
          child: const Card(
            child: Placeholder(),
          ),
        ),
        for (int i = 0; i < 2; i++)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.01,
            ),
            child: Text(
              i == 0
                  ? "Auction houses from arround the world"
                  : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vehicula accumsan fames dui,",
              softWrap: true,
              style: i == 0
                  ? Theme.of(context).textTheme.displayLarge
                  : Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 16,
                      ),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}
