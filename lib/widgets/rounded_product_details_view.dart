import 'package:flutter/material.dart';

class RoundedProductDetailsView extends StatelessWidget {

  final String imageUrl;
  const RoundedProductDetailsView({Key? key, required this.imageUrl}) : super(key: key);
  final grayColor = const Color(0xffededed);
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: const Color(0xffFADDCB),
      radius: 150,
      child: CircleAvatar(
        radius: 149,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 120,
          backgroundColor: grayColor,
          child: CircleAvatar(
            radius: 119,
            backgroundColor: const Color(0xffFADDCB),
            child: CircleAvatar(
              radius: 92,
              backgroundColor: Colors.white ,
              child: Center(
                child: Image(
                  image: NetworkImage(imageUrl),
                  height: 140,
                  width: 140,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
