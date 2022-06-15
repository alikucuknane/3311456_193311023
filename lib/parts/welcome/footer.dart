import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/sharedList.dart';
import 'package:flutter/material.dart';

class FooterPart extends StatelessWidget {
  final double height, width;
  const FooterPart({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Text(Constants.footerTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  color: Colors.white,
                ))),
        const Center(
          child: Text(
            Constants.footerText,
            style: TextStyle(fontSize: 42, color: Colors.white),
          ),
        ),
        SizedBox(
          height: height / 10,
        ),
        SizedBox(
          width: width - width / 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Constants.footerEntranceText,
                    style: TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: width / 50,
                  ),
                  Image.asset(Constants.footerImageRoute),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Constants.contactText,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  for (int i = 0; i < SharedList.footerList.length; i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height / 75,
                        ),
                        Text(
                          SharedList.footerList[i].title,
                          style: const TextStyle(
                            color: Color(0xFFB9B9B9),
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: height / 150,
                        ),
                        Text(
                          SharedList.footerList[i].subtitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  SizedBox(
                    height: height / 75,
                  ),
                  const Text(
                    Constants.connectWithMe,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: height / 150,
                  ),
                  Row(
                    children: [
                      for (int i = 0;
                          i < SharedList.footerSocialMediaList.length;
                          i++)
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              SizedBox(width: i == 0 ? 0 : 20),
                              Icon(
                                SharedList.footerSocialMediaList[i].icon,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
