import 'package:delivery_food_app/components/FoodCardInRestaurantPurchased.dart';
import 'package:delivery_food_app/components/foodCardInOrder.dart';
import 'package:delivery_food_app/components/foodCardInRestaurant.dart';
import 'package:delivery_food_app/components/restaurantCard.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class ComponentsScreen extends StatefulWidget {
  @override
  _ComponentsScreenState createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: AppColor.white,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Restaurant card default: ',
                  ),
                  RestaurantCard(),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Food card in order:'),
                  FoodCardInOrder(),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Food card in restaurant:'),
                  FoodCardInRestaurant(),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Food card in restaurant purchased:'),
                  FoodCardInRestaurantPurchased(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
