import 'package:bag_store/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Apple());
}

class Apple extends StatelessWidget {
  const Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bag UI",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.pink,
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
