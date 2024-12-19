import 'package:flutter/material.dart';

class FoodDiaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Diary'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Title for Food Diary
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Food Diary',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // Breakfast ExpansionTile
          ExpansionTile(
            title: Text('Breakfast', style: TextStyle(fontSize: 18)),
            leading: Icon(Icons.breakfast_dining),
            children: [
              ListTile(
                title: Text('Omelette'),
                subtitle: Text('Calories: 154 kcal'),
                trailing: Icon(Icons.check),
              ),
              ListTile(
                title: Text('Toast'),
                subtitle: Text('Calories: 80 kcal'),
                trailing: Icon(Icons.check),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Add Item'),
                onTap: () {
                  // Logic to add a breakfast item (e.g., show dialog)
                  _showAddItemDialog(context, 'Breakfast');
                },
              ),
            ],
          ),

          // Lunch ExpansionTile
          ExpansionTile(
            title: Text('Lunch', style: TextStyle(fontSize: 18)),
            leading: Icon(Icons.lunch_dining),
            children: [
              ListTile(
                title: Text('Grilled Chicken'),
                subtitle: Text('Calories: 300 kcal'),
                trailing: Icon(Icons.check),
              ),
              ListTile(
                title: Text('Rice'),
                subtitle: Text('Calories: 200 kcal'),
                trailing: Icon(Icons.check),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Add Item'),
                onTap: () {
                  // Logic to add a lunch item (e.g., show dialog)
                  _showAddItemDialog(context, 'Lunch');
                },
              ),
            ],
          ),

          // Dinner ExpansionTile
          ExpansionTile(
            title: Text('Dinner', style: TextStyle(fontSize: 18)),
            leading: Icon(Icons.dinner_dining),
            children: [
              ListTile(
                title: Text('Salad'),
                subtitle: Text('Calories: 150 kcal'),
                trailing: Icon(Icons.check),
              ),
              ListTile(
                title: Text('Soup'),
                subtitle: Text('Calories: 100 kcal'),
                trailing: Icon(Icons.check),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Add Item'),
                onTap: () {
                  // Logic to add a dinner item (e.g., show dialog)
                  _showAddItemDialog(context, 'Dinner');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Function to show a dialog for adding an item to a specific meal
  void _showAddItemDialog(BuildContext context, String meal) {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController itemController = TextEditingController();
        TextEditingController caloriesController = TextEditingController();

        return AlertDialog(
          title: Text('Add Item to $meal'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: itemController,
                decoration: InputDecoration(labelText: 'Item Name'),
              ),
              TextField(
                controller: caloriesController,
                decoration: InputDecoration(labelText: 'Calories'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Logic to add the item to the meal list
                // You can use a state management solution to add the item dynamically
                print('Added item: ${itemController.text}, Calories: ${caloriesController.text}');
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
