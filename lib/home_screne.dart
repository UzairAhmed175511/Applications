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
                        SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              RecommendItem(score: "6.0"),
                              RecommendItem(score: "5.0"),
                              RecommendItem(score: "7.0"),
                              RecommendItem(score: "9.0"),
                            ],
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

class RecommendItem extends StatelessWidget {
  final String score;
  const RecommendItem({required this.score, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            score,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
