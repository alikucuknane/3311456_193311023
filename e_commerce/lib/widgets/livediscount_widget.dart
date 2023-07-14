import 'package:flutter/material.dart';

class LiveDiscountWidget extends StatelessWidget {
  const LiveDiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return // Live Discount
        const Row(
      children: [
        Text(
          "Live discount 🔥",
        ),
        Spacer(),
        Text(
          "View All",
        ),
      ],
    );
  }
}
