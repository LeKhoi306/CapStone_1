import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Báo cáo tuần', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Calo tiêu thụ: 2100 calo', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Bước đi: 8,500 bước', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Giấc ngủ: 7.5 giờ', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
