import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback callback;

  const CategoryCard({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 220,
            decoration: const BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: AssetImage("images/img_2.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          const Positioned(
            top: 30,
            left: 20,
            child: Text(
              "Apple",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
