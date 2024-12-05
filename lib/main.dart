import 'package:flutter/material.dart';
import 'home.dart';  // Đảm bảo bạn đã import các trang khác
import 'sign_up.dart';
import 'pages/goals.dart';
import 'pages/food.dart';
import 'pages/exercise.dart';
import 'pages/report.dart';
import 'pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Calo',
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => FoodCaloApp(),
        '/home': (context) => HomePage(),
        '/goals': (context) => Goals(),
        '/food': (context) => FoodPage(),
        '/exercise': (context) => ExercisePage(),
        '/report': (context) => ReportPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}