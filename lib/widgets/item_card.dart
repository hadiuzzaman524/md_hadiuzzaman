import 'package:flutter/material.dart';
import 'package:md_hadiuzzaman/cubits/toggle/toggle_cubit.dart';
import 'package:md_hadiuzzaman/widgets/toggle_icon_button.dart';

import '../data/product_details.dart';
import 'custom_butto_with_icon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  final VoidCallback voidCallback;
  int id;
  String title;
  double price;
  String description;
  String image;
  Rating rating;

  ItemCard(
      {Key? key,
      required this.voidCallback,
      required this.title,
      required this.price,
      required this.id,
      required this.description,
      required this.image,
      required this.rating})
      : super(key: key);
  final Widget _sizedBox = const SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        height:260, //MediaQuery.of(context).size.height/2.5,
        width: 235,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 25,
              child: Container(
                height: 25,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "-50%",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  _sizedBox,
                  Image.network(
                    image,
                    height: 90,
                    width: 100,
                  ),
                  _sizedBox,
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomButtonWithIcon(
                        title: "Add To Cart",
                        icon: Icon(
                          Icons.add_shopping_cart_rounded,
                          color: Color(0xff2670D8),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFE1E6),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const ToggleIconButton(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      title,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  _sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${price.toString()} \$",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "170.00\$",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
