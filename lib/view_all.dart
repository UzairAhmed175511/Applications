import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestSellerScreen extends StatelessWidget {
  const BestSellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Best Seller",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Container(height: 30, color: Colors.orangeAccent),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                  right: 60,
                  left: 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Discover our most popular dishes!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child:
                          foodItems.isNotEmpty
                              ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.75,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                    ),
                                itemCount: foodItems.length,
                                itemBuilder: (context, index) {
                                  final food = foodItems[index];
                                  return FoodCard(food: food);
                                },
                              )
                              : const Center(
                                child: Text(
                                  "No items available!",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class FoodCard extends StatelessWidget {
  final FoodItem food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              food.image,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) => Image.asset(
                    'images/icons/home.svg', // Ensure this image exists
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  food.description,
                  style: const TextStyle(color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 16),
                        Text(" ${food.rating}"),
                      ],
                    ),
                    Text(
                      "\$${food.price.toStringAsFixed(2)}",
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItem {
  final String name;
  final String description;
  final String image;
  final double price;
  final double rating;

  FoodItem({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });
}

List<FoodItem> foodItems = [
  FoodItem(
    name: "Sunny Bruschetta",
    description: "Delicious Italian-inspired dish with fresh ingredients.",
    image: "images/food1.png",
    price: 15.0,
    rating: 5.0,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  FoodItem(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
];

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<String> iconPaths = [
    "images/icons/home.svg",
    "images/icons/dish.svg",
    "images/icons/heart.svg",
    "images/icons/clipboard.svg",
    "images/icons/support.svg",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Implement navigation logic here
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/dishes');
        break;
      case 2:
        Navigator.pushNamed(context, '/favorites');
        break;
      case 3:
        Navigator.pushNamed(context, '/orders');
        break;
      case 4:
        Navigator.pushNamed(context, '/support');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(iconPaths.length, (index) {
          return GestureDetector(
            onTap: () => _onItemTapped(index),
            child: SvgPicture.asset(
              iconPaths[index],
              height: 30,
              colorFilter: ColorFilter.mode(
                _selectedIndex == index ? Colors.white : Colors.white70,
                BlendMode.srcIn,
              ),
            ),
          );
        }),
      ),
    );
  }
}
