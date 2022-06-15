import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/sharedList.dart';
import 'package:flutter/material.dart';

class ServicesPart extends StatelessWidget {
  final double height, width;
  const ServicesPart({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(Constants.servicesText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                )),
            SizedBox(
              height: height / 20,
            ),
            Image.asset(
              Constants.servicesImageRoute,
            ),
          ],
        ),
        SizedBox(
          width: width / 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < SharedList.servicesTextsList.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: i == 0 ? 0 : height / 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(SharedList.servicesTextsList[i].counter,
                          style: const TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 26,
                          )),
                      SizedBox(
                        width: width / 150,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            SharedList.servicesTextsList[i].text,
                            style: const TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 26,
                            ),
                          ),
                          Text(
                            SharedList.servicesTextsList[i].subText,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
