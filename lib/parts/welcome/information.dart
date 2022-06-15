import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:flutter/material.dart';

class InformationPart extends StatelessWidget {
  final double height, width;
  const InformationPart({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Constants.infoImageRoute),
        SizedBox(
          width: width / 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              Constants.info,
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
              ),
            ),
            SizedBox(
              height: height / 20,
            ),
            const Text(
              Constants.informationText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: height / 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF9b9b9b),
                ),
                onPressed: () {},
                child: const Text(Constants.moreButtonText)),
          ],
        )
      ],
    );
  }
}
