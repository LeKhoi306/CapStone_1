import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://www.example.com/avatar.png'),
            ),
            SizedBox(height: 20),
            Text('John Doe', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Email: johndoe@example.com', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
