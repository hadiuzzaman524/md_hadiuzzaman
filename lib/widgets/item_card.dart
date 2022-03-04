import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);
  final Widget _sizedBox = const SizedBox(height: 10);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
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
                Image.asset(
                  "images/img_1.png",
                  height: 100,
                  width: 110,
                ),
                _sizedBox,
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Color(0xffD8E5F8),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      child: Center(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.ten_k_sharp),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2670D8),
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFE1E6),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      child: const Icon(
                        Icons.ten_k_outlined,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "OnePlus 7T Dual Sim 8GB RAM 112GB LTE Frosted Silver",
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
                      "170.00#",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "170.00#",
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
    );
  }
}
