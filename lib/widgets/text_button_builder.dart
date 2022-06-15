import 'package:flutter/material.dart';

class TextButtonBuilder extends StatelessWidget {
  final String text;
  //final String routing;

  // ignore: use_key_in_widget_constructors
  const TextButtonBuilder({
    required this.text, //required this.routing,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        //onPressed: () => Navigator.pushNamed(context, routing)
        onPressed: () {},
        child: Text(text));
  }
}
