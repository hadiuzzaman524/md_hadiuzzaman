import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_butto_with_icon.dart';

import '../widgets/categorical_product_view.dart';
import '../widgets/categorical_title.dart';

class CategoricalScreen extends StatefulWidget {
  const CategoricalScreen({Key? key}) : super(key: key);

  @override
  State<CategoricalScreen> createState() => _CategoricalScreenState();
}

class _CategoricalScreenState extends State<CategoricalScreen> {
  final iconList = <IconData>[
    Icons.home,
    Icons.favorite,
    Icons.account_box_sharp,
    Icons.person,
  ];

  var _bottomNavIndex = 0;
  final _sizedBox = const SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
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
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const CategoryTitle(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomIconForCategory(
                  icon: Icon(Icons.accessibility_new_rounded),
                  title: "Sneakers"),
              CustomIconForCategory(icon: Icon(Icons.watch), title: "Watch"),
              CustomIconForCategory(
                  icon: Icon(Icons.add_alert_sharp), title: "Backpack"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            //height: MediaQuery.of(context).size.height/1.8,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 4.5,
              children: const [
                CategoricalProductView(),
                CategoricalProductView(),
                CategoricalProductView(),
                CategoricalProductView(),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //params
        backgroundColor: const Color(0xff3E43AB),
        child: Stack(
          children: const [
            Icon(Icons.add_shopping_cart_rounded),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
