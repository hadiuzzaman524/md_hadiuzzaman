import 'package:flutter/material.dart';
import 'package:md_hadiuzzaman/cubits/product/product_cubit.dart';
import '../screen/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/toggle/toggle_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: const Color(0xffF5F5F8),
        scaffoldBackgroundColor: const Color(0xffF5F5F8),
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider(
          create: (BuildContext context) => ProductCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => ToggleCubit(),
        )
      ], child: const HomePage()),
    );
  }
}
