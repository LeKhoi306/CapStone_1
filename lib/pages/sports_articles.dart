import 'package:flutter/material.dart';

class SportsArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> articles = [
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
        title: Text('Sports Articles'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(articles[index]['title']!),
              subtitle: Text(articles[index]['content']!),
            ),
          );
        },
      ),
    );
  }
}
