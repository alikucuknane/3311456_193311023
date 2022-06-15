import 'package:flutter/material.dart';

class AppBarButton {
  final String title;
  final Function onPressed;
  const AppBarButton({Key? key, required this.title, required this.onPressed});
}

Widget build(BuildContext context) {
  return const InkWell();
}
