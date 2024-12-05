import 'package:flutter/material.dart';

class MyFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Text(
          'My Food',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.fastfood),
          title: Text('Chicken Breast'),
          subtitle: Text('Calories: 165 kcal'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Icon(Icons.local_pizza),
          title: Text('Pizza Slice'),
          subtitle: Text('Calories: 285 kcal'),
          trailing: Icon(Icons.delete),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Tổng lượng calo
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Total Calories: 450 kcal')),
            );
          },
          child: Text('Calculate Total Calories'),
        ),
      ],
    );
  }
}
