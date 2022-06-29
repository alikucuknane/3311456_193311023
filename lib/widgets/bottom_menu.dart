import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
          children: [
            //for
            InkWell(
              onTap: () {}, // select
              child: Icon(
                Icons.home,
                color: Colors.white70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
