// import 'package:flutter/material.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/consts.dart';
import 'package:dogrudan_ticaret_sistemleri/shared/constants/sharedList.dart';
import 'package:flutter/material.dart';

class AppBarPart extends StatelessWidget {
  const AppBarPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: height / 10,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // LOGO (DOTS)
            SizedBox(
              width: width / 13.5,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                Constants.logoRoute,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                Constants.companyName,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Row(
              children: [
                for (int i = 0; i < SharedList.menuList.length; i++)
                  Row(
                    children: [
                      SizedBox(
                        width: width / 25,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          SharedList.menuList[i],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
