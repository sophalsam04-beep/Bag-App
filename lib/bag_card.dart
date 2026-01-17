import 'package:flutter/material.dart';
import 'bag.dart';
import 'home_screen.dart';
import 'detail_screen.dart';

class BagCard extends StatelessWidget {
  final bag;
  const BagCard({super.key, required this.bag});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              "https://i.pinimg.com/736x/1c/6c/9e/1c6c9eaaaccad670bc5b84be17510f52.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  "Golden Light",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
