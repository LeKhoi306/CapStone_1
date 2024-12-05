import 'package:flutter/material.dart';

class FoodDiaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Text(
          'Food Diary',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
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
                // Logic thêm bữa ăn
              },
            ),
          ],
        ),
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
                // Logic thêm bữa ăn
              },
            ),
          ],
        ),
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
                // Logic thêm bữa ăn
              },
            ),
          ],
        ),
      ],
    );
  }
}
