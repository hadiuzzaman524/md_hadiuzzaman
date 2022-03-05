import 'package:flutter/material.dart';
import '../data/product_details.dart';
import '../widgets/discount_button.dart';
import '../widgets/product_details_with_color_pik.dart';
import '../widgets/rounded_product_details_view.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final double price;
  final String description;
  final Rating rating;
  final String image;

  DetailsScreen(
      {Key? key,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.rating})
      : super(key: key);

  final _appBar = AppBar(
    backgroundColor: const Color(0xffF5F5F8),
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.black, //change your color here
    ),
    title: Text(
      "xe".toUpperCase(),
      style: const TextStyle(
        color: Colors.blue,
      ),
    ),
    centerTitle: true,
    actions: const [
      CircleAvatar(
        backgroundColor: Colors.red,
        radius: 16,
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const DiscountButton(discount: "30%"),
          const SizedBox(
            height: 10,
          ),
          RoundedProductDetailsView(
            imageUrl: image,
          ),
          ProductDetailsColorPik(
            price: price,
            rating: rating,
            title: title,
            description: description,
          ),
        ],
      ),
    );
  }
}
