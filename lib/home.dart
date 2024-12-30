import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'pages/goals.dart';
import 'pages/food.dart';
import 'pages/exercise.dart';
import 'pages/report.dart';
import 'pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPersonalInfoProvided = false;
  String weight = '';
  String height = '';
  String exerciseFrequency = '';

  final List<Map<String, String>> healthArticles = [
    {
      'title': 'Top Nutrition Tips for 2024',
      'link': 'https://www.cspinet.org/daily/what-to-eat/new-year-stay-healthy#:~:text=10%20simple%20tips%20to%20get%20%28and%20stay%29%20healthy,to%20your%20grains%20with%20vegetables.%20...%20More%20items'
    },
    {
      'title': '10 Exercises for a Healthy Heart',
      'link': 'https://www.onelifefitness.com/news/top-10-cardiovascular-exercises-for-healthy-heart#:~:text=Improve%20your%20heart%20health%20and%20lose%20weight%20with,boxing%2C%20stair%20climbing%2C%20elliptical%20training%2C%20and%20cross-country%20skiing.'
    },
    {
      'title': 'Benefits of Daily Meditation',
      'link': 'https://www.healthline.com/nutrition/12-benefits-of-meditation'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Goals'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Goals()),
                );
              },
            ),
            ListTile(
              title: const Text('Food'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Exercise'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExercisePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Report'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Profile'),
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
      body: isPersonalInfoProvided
          ? ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Health Articles',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...healthArticles.map((article) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(article['title']!),
                trailing: const Icon(Icons.link),
                onTap: () {
                  _openArticleLink(article['link']!);
                },
              ),
            );
          }).toList(),
        ],
      )
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Please enter your personal information:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Weight (kg or pounds)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                weight = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Height (cm or feet)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                height = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Exercise Frequency',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                exerciseFrequency = value;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isPersonalInfoProvided = true;
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Lôi web
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebviewScaffold(
                url: "https://huggingface.co/playground?modelId=Qwen/Qwen2.5-72B-Instruct", // Replace with your AI chat URL
                appBar: AppBar(title: const Text("AI Chat")),
              ),
            ),
          );
        },
        child: const Icon(Icons.chat),
        tooltip: 'Open Chat',
      ),
    );
  }

  void _openArticleLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
