import 'package:dogrudan_ticaret_sistemleri/shared/constants/sharedList.dart';
import 'package:flutter/material.dart';

class ReferancePart extends StatelessWidget {
  final double height, width;
  const ReferancePart({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - width / 25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Referanslarımız",
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
            ),
          ),
          const Text(
            "Onlarca işletme, e-ticaret yönetimlerini DOTS'a emanet etti. Onlar işlerine yaparken, biz\nürünlerinin daha çok kişiye güvenle ulaşması için sağlıyoruz.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            ///TODO delete
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.arrow_left,
                  size: height / 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: width / 35,
              ),
              Column(
                children: [
                  SizedBox(
                    width: width - (width / 25 + width / 17.5 + height / 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i < 3; i++)
                          Row(
                            children: [
                              SizedBox(
                                width: i == 0 ? 0 : width / 150,
                              ),
                              Container(
                                width: width / 8,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      SharedList.referanceImageRoute[i],
                                    ),
                                    Container(
                                      height: height / 20,
                                      width: width / 8,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Mağaza adı",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 150,
                  ),
                  Center(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Container(
                            color: i == 1
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFF9B9B9B),
                          )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width / 35,
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.arrow_right,
                  size: height / 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height / 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Row(
                  children: [
                    SizedBox(
                      width: i == 0 ? 0 : width / 150,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: i == 1 ? height / 50 : height / 75,
                        width: i == 1 ? height / 50 : height / 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            i == 1 ? height / 50 : height / 75,
                          ),
                          color:
                              i == 1 ? Colors.white : const Color(0xFF9b9b9b),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(
            height: height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height / 20,
                width: width / 15,
                decoration: BoxDecoration(
                  color: const Color(0xFF9B9B9B),
                  borderRadius: BorderRadius.circular(
                    height / 150,
                  ),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      "Daha Fazla",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: height / 20 + width / 35,
              )
            ],
          ),
        ],
      ),
    );
  }
}
