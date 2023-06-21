import 'package:flutter/material.dart';

class LoginPageTextfieldModel {
  final String labelText, initialValue;
  final List<IconData>? icons;
  LoginPageTextfieldModel({
    required this.labelText,
    required this.initialValue,
    this.icons,
  });
}
