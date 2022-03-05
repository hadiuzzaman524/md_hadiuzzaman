import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String title;

  const TitleBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const Spacer(),
        const Icon(Icons.keyboard_control_rounded),
      ],
    );
  }
}