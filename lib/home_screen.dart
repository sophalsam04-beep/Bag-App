import 'package:bag_store/bag_card.dart';
import 'package:bag_store/detail_screen.dart';
import 'package:flutter/material.dart';
import 'bag.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final int index = 0;

  final bags = [
    bag(
      name: "Golden Light",
      image: "assets/bag.png",
      price: 400,
      rating: 4.44,
    ),
    bag(
      name: "Golden Light",
      image: "assets/bag.png",
      price: 400,
      rating: 4.44,
    ),
    bag(
      name: "Golden Light",
      image: "assets/bag.png",
      price: 400,
      rating: 4.44,
    ),
    bag(
      name: "Golden Light",
      image: "assets/bag.png",
      price: 400,
      rating: 4.44,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/3b/ac/ee/3baceedc0633c8cc703cad96f79816de.jpg",
            ),
          ),
        ],
      ),
      backgroundColor: Colors.pink,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.apple, size: 30), label: ""),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find to Favorite\nItems",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(fontSize: 14),
                  labelStyle: TextStyle(fontSize: 20),
                  prefixIcon: const Icon(Icons.search, size: 25),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Popular",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .7,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailScreen(bag: [index]),
                        ),
                      ),
                      child: BagCard(bag: [index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
