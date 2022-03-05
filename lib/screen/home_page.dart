import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubits/product/product_cubit.dart';
import '../cubits/product/product_state.dart';
import '../data/product_details.dart';
import '../screen/details_page.dart';
import '../widgets/item_card.dart';
import '../widgets/search_button.dart';
import '../widgets/appbar.dart';
import '../widgets/category_card.dart';
import '../widgets/titlebar.dart';
import 'categori_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


// use stateful widget for animated bottom navigation

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final Widget _sizedBox = const SizedBox(height: 10);
  final iconList = <IconData>[
    Icons.home,
    Icons.add_shopping_cart_rounded,
  ];
  var _bottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductCubit>(context).fetchData();

    return Scaffold(
      key: _key,
      drawer: const Drawer(),
      body: SafeArea(
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is LoadedState) {
              List<ProductDetailsClass> _productDetails = state.productList;
              return SizedBox(
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
                                  children: [
                                    ItemCard(
                                      voidCallback: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (ctx) => DetailsScreen(
                                              price:
                                                  _productDetails[index].price,
                                              description:
                                                  _productDetails[index]
                                                      .description,
                                              title:
                                                  _productDetails[index].title,
                                              rating:
                                                  _productDetails[index].rating,
                                              image:
                                                  _productDetails[index].image,
                                            ),
                                          ),
                                        );
                                      },
                                      price: _productDetails[index].price,
                                      description:
                                          _productDetails[index].description,
                                      title: _productDetails[index].title,
                                      rating: _productDetails[index].rating,
                                      image: _productDetails[index].image,
                                      id: _productDetails[index].id,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                );
                              },
                              itemCount: _productDetails.length,
                            ),
                          ),
                          _sizedBox,
                          _sizedBox,
                          const TitleBar(title: "Popular Categories"),
                          _sizedBox,
                          _sizedBox,
                          SizedBox(
                            height: 110,
                            width: double.infinity,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Row(
                                  children: [
                                    CategoryCard(
                                      callback: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (ct) =>
                                                const CategoricalScreen(),
                                          ),
                                        );
                                      },
                                      title: category[index],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    )
                                  ],
                                );
                              },
                              itemCount: category.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffFEAB02),
        child: const Icon(
          Icons.keyboard_voice,
          size: 30,
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
