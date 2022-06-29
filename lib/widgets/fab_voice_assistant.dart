import 'package:flutter/material.dart';

class FABVoiceAssistant extends StatelessWidget {
  const FABVoiceAssistant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.graphic_eq,
      ),
      shape: BeveledRectangleBorder(
        // TODO Shape
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
    );
  }
}
