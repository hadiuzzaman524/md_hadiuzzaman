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
          radius: 13,
          child: CircleAvatar(
            backgroundColor: firstColor,
            radius: 10,
          ),
        ),
        const SizedBox(
          width: 13,
        ),
      ],
    );
  }
}
