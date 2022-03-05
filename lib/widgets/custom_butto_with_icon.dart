import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String title;
  final Icon icon;

  const CustomButtonWithIcon(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      decoration: const BoxDecoration(
        color: Color(0xffD8E5F8),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2670D8),
                ),
              ),
            ],
          )),
    );
  }
}


class CustomIconForCategory extends StatelessWidget {
  final String title;
  final Icon icon;
  const CustomIconForCategory({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              icon,
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
  }
}
