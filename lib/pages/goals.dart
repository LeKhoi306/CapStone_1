import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Mục tiêu calo'),
                subtitle: Text('3000 calo/ngày'),
                trailing: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Số bước đi'),
                subtitle: Text('10,000 bước/ngày'),
                trailing: Icon(Icons.directions_walk),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Giấc ngủ'),
                subtitle: Text('8 giờ/ngày'),
                trailing: Icon(Icons.nightlight_round),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
