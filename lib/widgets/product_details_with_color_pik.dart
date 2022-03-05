import 'package:flutter/material.dart';
import '../data/product_details.dart';
import '../widgets/size_button.dart';
import 'color_button.dart';

class ProductDetailsColorPik extends StatelessWidget {
  final String title;
  final double price;
  final String description;
  final Rating rating;

  const ProductDetailsColorPik(
      {Key? key,
      required this.rating,
      required this.price,
      required this.description,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      height: 350,
      // color: Colors.amber,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: const BoxDecoration(
            color: Color(0xffededed),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 295,
                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            //  overflow: TextOverflow.clip,
                          ),
                        ),
                        const Icon(Icons.star, color: Colors.amber),
                         FittedBox(
                          child: Text('${rating.count}\$',
                          style: const TextStyle(
                            fontSize: 11,
                          ),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),

                    Text(
                      description,
                      maxLines: 6,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Size: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizeButton(),
                        SizeButton(),
                        SizeButton(),
                        SizeButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Available Color: ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        ColorButton(
                          secondColor: Color(0xffE294A4),
                          firstColor: Color(0xffF50434),
                        ),
                        ColorButton(
                          firstColor: Color(0xff421AE0),
                          secondColor: Color(0xffA494E2),
                        ),
                        ColorButton(
                          firstColor: Color(0xff6EC874),
                          secondColor: Color(0xff0FDD1D),
                        ),
                        ColorButton(
                          firstColor: Color(0xffC56EC8),
                          secondColor: Color(0xffD109D9),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 55,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "$price \$",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: const BoxDecoration(
                            color: Color(0xffededed),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.ten_k_outlined,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Add To Card",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
