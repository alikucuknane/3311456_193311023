import 'package:flutter/material.dart';

class UserPageModel {
  final String text;
  final Widget routeWidget;
  final IconData icon;
  UserPageModel({
    required this.text,
    required this.icon,
    required this.routeWidget,
  });
}
