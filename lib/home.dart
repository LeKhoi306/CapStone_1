import 'package:flutter/material.dart';
import 'pages/goals.dart'; // Import các file trang khác
import 'pages/food.dart';
import 'pages/exercise.dart';
import 'pages/report.dart';
import 'pages/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Danh sách bài báo thể thao (mẫu)
    final List<Map<String, String>> sportsArticles = [
      {
        'title': 'Top Football Players in 2024',
        'content': 'An analysis of the top football players this year.'
      },
      {
        'title': 'Marathon Tips for Beginners',
        'content': 'How to prepare for your first marathon.'
      },
      {
        'title': 'The Rise of Esports',
        'content': 'Exploring the growing popularity of esports worldwide.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Sports Articles:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sportsArticles.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    title: Text(
                      sportsArticles[index]['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(sportsArticles[index]['content']!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Đóng Drawer vì đang ở Home
              },
            ),
            ListTile(
              title: Text('Goals'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Goals()),
                );
              },
            ),
            ListTile(
              title: Text('Food'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage()),
                );
              },
            ),
            ListTile(
              title: Text('Exercise'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExercisePage()),
                );
              },
            ),
            ListTile(
              title: Text('Report'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportPage()),
                );
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
