import 'package:flutter/material.dart';
import 'package:food_delivery/view_all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController check = TextEditingController();

  @override
  void dispose() {
    check.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        title: SizedBox(
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
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 130),
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
                  "Rise And Shine! It's Breakfast Time",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: ListView(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Divider(color: Colors.orangeAccent, thickness: 2),
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
                        child: const Text(
                          "view all >",
                          style: TextStyle(fontSize: 18, color: Colors.red),
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
                        FoodItem(image: "images/food4.png", price: "\$103.0"),
                        FoodItem(image: "images/food2.png", price: "\$80.0"),
                        FoodItem(image: "images/food3.png", price: "\$12.99"),
                        FoodItem(image: "images/food1.png", price: "\$8.20"),
                        FoodItem(image: "images/food4.png", price: "\$103.0"),
                        FoodItem(image: "images/food2.png", price: "\$80.0"),
                        FoodItem(image: "images/food3.png", price: "\$12.99"),
                        FoodItem(image: "images/food1.png", price: "\$8.20"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Recommend",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  foodItems.isNotEmpty
                      ? GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
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
                ],
              ),
            ),
          ),
        ],
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
