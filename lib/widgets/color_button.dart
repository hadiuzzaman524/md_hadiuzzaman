import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;

  const ColorButton(
      {Key? key, required this.firstColor, required this.secondColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: secondColor,
          radius: 15,
          child: CircleAvatar(
            backgroundColor: firstColor,
            radius: 12,
          ),
        ),
        const SizedBox(
          width: 13,
        ),
      ],
    );
  }
}
