import 'package:flutter/material.dart';

class MyFoodPage extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {'name': 'Chicken Breast', 'calories': 165, 'icon': Icons.fastfood},
    {'name': 'Pizza Slice', 'calories': 285, 'icon': Icons.local_pizza},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Food'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Title for the Page
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'My Food',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // List of Food Items
          ...foodItems.map((foodItem) {
            return ListTile(
              leading: Icon(foodItem['icon']),
              title: Text(foodItem['name']),
              subtitle: Text('Calories: ${foodItem['calories']} kcal'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Logic to delete an item (you can modify this as needed)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${foodItem['name']} deleted')),
                  );
                },
              ),
            );
          }).toList(),

          // Space between the list and the button
          SizedBox(height: 20),

          // Button to calculate total calories
          ElevatedButton(
            onPressed: () {
              // Calculate the total calories by summing the calories of the food items
              // int totalCalories = foodItems.fold(0, (sum, item) => sum + item['calories']).toInt();
              int totalCalories = foodItems.fold<int>(0, (sum, item) => sum + (item['calories'] as int));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Total Calories: $totalCalories kcal')),
              );
            },
            child: Text('Calculate Total Calories'),
          ),
        ],
      ),
    );
  }
}
