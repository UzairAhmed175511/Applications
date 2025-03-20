import 'package:flutter/material.dart';
import 'package:food_delivery/view_all.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController check = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        title: Container(
          height: 30,
          width: 300,
          child: TextField(
            controller: check,
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: const Icon(Icons.tune, color: Colors.red),
              fillColor: Colors.white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.orangeAccent),
              ),
            ),
          ),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Colors.white,
              child: const Icon(Icons.shopping_cart, color: Colors.red),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 3),
          Container(
            height: 30,
            width: 30,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.notification_important_outlined,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 3),
          Container(
            height: 30,
            width: 30,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: const Icon(Icons.person_2_outlined, color: Colors.red),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Container(
                height: 80,

                child: Column(
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "         Rise And Shine! It's Breakfast Time",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      bottom: 16,
                      right: 40,
                      left: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: SizedBox(
                            height: 80,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                SizedBox(
                                  child: CategoryItem(
                                    icon: Icons.fastfood,
                                    label: "Snacks",
                                  ),
                                ),
                                SizedBox(
                                  child: CategoryItem(
                                    icon: Icons.restaurant,
                                    label: "Meal",
                                  ),
                                ),
                                SizedBox(
                                  child: CategoryItem(
                                    icon: Icons.eco,
                                    label: "Vegan",
                                  ),
                                ),
                                SizedBox(
                                  child: CategoryItem(
                                    icon: Icons.cake,
                                    label: "Dessert",
                                  ),
                                ),
                                SizedBox(
                                  child: CategoryItem(
                                    icon: Icons.local_drink,
                                    label: "Drinks",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            color: Colors.orangeAccent,
                            height: 2,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Best Seller",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BestSellerScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "view all >",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              FoodItem(
                                image: "images/food4.png",
                                price: "\$103.0",
                              ),
                              FoodItem(
                                image: "images/food2.png",
                                price: "\$80.0",
                              ),
                              FoodItem(
                                image: "images/food3.png",
                                price: "\$12.99",
                              ),
                              FoodItem(
                                image: "images/food1.png",
                                price: "\$8.20",
                              ),
                              FoodItem(
                                image: "images/food2.png",
                                price: "\$8.20",
                              ),
                              FoodItem(
                                image: "images/food4.png",
                                price: "\$8.20",
                              ),
                              FoodItem(
                                image: "images/food1.png",
                                price: "\$8.20",
                              ),
                              FoodItem(
                                image: "images/food3.png",
                                price: "\$8.20",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 150,
                                width: 100,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: const Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Experience our \ndelicious new dish ",

                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "30% off ",

                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Image(
                                image: AssetImage("images/food1.png"),
                                width: 250,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Recommend",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
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
                                      final food = foodddatas[index];
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
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const CategoryItem({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String image;
  final String price;
  const FoodItem({required this.image, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final Fooddata food;

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

class Fooddata {
  final String name;
  final String description;
  final String image;
  final double price;
  final double rating;

  Fooddata({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });
}

List<Fooddata> foodddatas = [
  Fooddata(
    name: "Sunny Bruschetta",
    description: "Delicious Italian-inspired dish with fresh ingredients.",
    image: "images/food1.png",
    price: 15.0,
    rating: 5.0,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
  Fooddata(
    name: "Gourmet Grilled Skewers",
    description: "Tender grilled skewers with a mix of veggies and meat.",
    image: "images/food2.png",
    price: 12.0,
    rating: 4.5,
  ),
];
