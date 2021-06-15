import 'package:delivery_food_app/screens/profile/widgets/background_container.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFEFF0F3),
        child: Column(
          children: [
            BackgroundContainer()
          ],
        ),
      )
    );
  }
}
