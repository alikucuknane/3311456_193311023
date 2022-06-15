// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:flutter/material.dart';

class EntrancePart extends StatelessWidget {
  final double height, width;
  const EntrancePart({required this.height, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Constants.entranceImage,
          height: height,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: height / 5,
          left: width / 13.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Constants.entrance0,
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
              SizedBox(
                height: height / 100,
              ),
              const Text(
                Constants.entrance1,
                style: TextStyle(color: Color(0xFF9b9b9b), fontSize: 20),
              ),
            ],
          ),
        )
      ],
    );
  }
}
