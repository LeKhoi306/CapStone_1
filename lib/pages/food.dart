import 'package:flutter/material.dart';
import 'food_diary.dart';
import 'my_food.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Food Diary'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodDiaryPage()),
              );
            },
          ),
          ListTile(
            title: Text('My Food'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyFoodPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
