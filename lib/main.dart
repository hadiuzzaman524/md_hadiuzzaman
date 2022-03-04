import 'package:flutter/material.dart';
import 'package:md_hadiuzzaman/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xffF5F5F8),
        scaffoldBackgroundColor: Color(0xffF5F5F8),
      ),
      home:  HomePage(),
    );
  }
}
