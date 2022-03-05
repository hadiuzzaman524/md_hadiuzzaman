import 'package:flutter/material.dart';

class CategoricalProductView extends StatelessWidget {
  final _sizedBox = const SizedBox(
    height: 10,
  );

  const CategoricalProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        //  height: 150,
        //width: 170,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            _sizedBox,
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                const Spacer(),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      _sizedBox,
                      /* Image.asset(
                        "images/img_1.png",
                        height: 100,
                        width: 110,
                      ),*/
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 48,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 47,
                            child: Image.network(
                              "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
                              height: 70,
                              width: 60,
                            ),
                          ),
                        ),
                      ),
                      _sizedBox,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Mens Casual Slim Fit",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      _sizedBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "170.00 \$",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                      _sizedBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.amber,
                          ),
                          Text("(4.5)"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
