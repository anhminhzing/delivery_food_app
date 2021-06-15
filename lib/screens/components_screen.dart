import 'package:delivery_food_app/components/foodCardInRestaurantPromote.dart';
import 'package:delivery_food_app/components/foodCardInRestaurantPurchased.dart';
import 'package:delivery_food_app/components/foodCardInOrder.dart';
import 'package:delivery_food_app/components/foodCardInRestaurant.dart';
import 'package:delivery_food_app/components/foodCardInRestaurantV2.dart';
import 'package:delivery_food_app/components/foodOrderHistory.dart';
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
        centerTitle: true,
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
                  SizedBox(
                    height: 50,
                  ),
                  Text('Food card order history:'),
                  FoodCardOrderHistory(),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Food card in restaurant v2:'),
                  FoodCardInRestaurantV2(),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Food card in restaurant promote:'),
                  FoodCardInRestaurantPromote(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
