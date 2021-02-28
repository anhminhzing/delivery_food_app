import 'package:flutter/material.dart';

class ProfileUserScreen extends StatefulWidget {
  @override
  _ProfileUserScreenState createState() => _ProfileUserScreenState();
}

class _ProfileUserScreenState extends State<ProfileUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile User'),
      ),
      body: Center(
        child: Text(
          'Profile user',
        ),
      ),
    );
  }
}
