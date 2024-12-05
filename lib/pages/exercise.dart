import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Text(
          'Exercise Recommendations',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.run_circle),
          title: Text('Jogging'),
          subtitle: Text('Burns 200 kcal in 30 minutes'),
        ),
        ListTile(
          leading: Icon(Icons.directions_bike),
          title: Text('Cycling'),
          subtitle: Text('Burns 250 kcal in 30 minutes'),
        ),
        ListTile(
          leading: Icon(Icons.sports_gymnastics),
          title: Text('Yoga'),
          subtitle: Text('Burns 100 kcal in 30 minutes'),
        ),
        ListTile(
          leading: Icon(Icons.fitness_center),
          title: Text('HIIT Workout'),
          subtitle: Text('Burns 400 kcal in 20 minutes'),
        ),
      ],
    );
  }
}
