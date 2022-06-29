import 'package:flutter/material.dart';

class BottomMenuModel {
  final IconData icons;
  final String text;
  bool isSelected;
  BottomMenuModel({
    required this.icons,
    required this.text,
    required this.isSelected,
  });
}
