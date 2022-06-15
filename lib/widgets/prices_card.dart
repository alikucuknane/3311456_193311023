import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:flutter/material.dart';

class PricesCard extends StatelessWidget {
  final double height, width;
  final String title;
  final List<String> text;
  const PricesCard(
      {Key? key,
      required this.height,
      required this.width,
      required this.title,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3 * (height / 7),
      width: width / 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          height / 75,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: height / 150,
            ),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            for (int i = 0; i < text.length; i++)
              Text(
                text[i],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            InkWell(
              onTap: () {},
              child: Container(
                height: height / 20,
                width: width / 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                    height / 150,
                  ),
                ),
                child: const Center(
                  child: Text(
                    Constants.letsCallYouButton,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 150,
            ),
          ],
        ),
      ),
    );
  }
}
