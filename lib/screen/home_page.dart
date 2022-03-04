import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:md_hadiuzzaman/widgets/item_card.dart';
import 'package:md_hadiuzzaman/widgets/search_button.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../widgets/appbar.dart';
import '../widgets/category_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final Widget _sizedBox = const SizedBox(height: 10);
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.ten_k,
  ];
  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              CustomAppBar(key2: _key),
              _sizedBox,
              const SearchButton(),
              _sizedBox,
              _sizedBox,
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const TitleBar(
                      title: 'Daily Deals',
                    ),
                    _sizedBox,
                    SizedBox(
                      height: 270,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Row(
                            children: const [
                              ItemCard(),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                    _sizedBox,
                    _sizedBox,
                    const TitleBar(title: "Popular Categories"),
                    _sizedBox,
                    _sizedBox,
                    Container(
                      height: 110,
                      width: double.infinity,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Row(
                            children: const [
                              CategoryCard(),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //params
        backgroundColor: const Color(0xffFEAB02),
        child: const Icon(Icons.six_k_plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  final String title;

  const TitleBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        const Spacer(),
        const Icon(Icons.eleven_mp_sharp),
      ],
    );
  }
}
