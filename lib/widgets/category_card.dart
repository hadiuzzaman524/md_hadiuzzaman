import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback callback;
  final String title;

  const CategoryCard({Key? key, required this.callback, required this.title})
      : super(key: key);

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
              image: DecorationImage(
                  image: AssetImage("images/img_2.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Text(
              title,
              style: const TextStyle(
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
