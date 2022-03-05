import 'package:flutter/material.dart';


class ToggleIconButton extends StatefulWidget {
  const ToggleIconButton({Key? key}) : super(key: key);

  @override
  _ToggleIconButtonState createState() => _ToggleIconButtonState();
}

class _ToggleIconButtonState extends State<ToggleIconButton> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: flag
          ? const Icon(
        Icons.favorite,
        color: Colors.red,
      )
          : const Icon(
        Icons.favorite_border_outlined,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          flag = !flag;
        });
      },
    );
  }
}
