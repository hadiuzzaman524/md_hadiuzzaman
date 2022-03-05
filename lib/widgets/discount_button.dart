import 'package:flutter/material.dart';

class DiscountButton extends StatelessWidget {
  final String discount;

  const DiscountButton({Key? key, required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 30,
      width: 45,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child:  Center(
        child: Text(
          discount,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
