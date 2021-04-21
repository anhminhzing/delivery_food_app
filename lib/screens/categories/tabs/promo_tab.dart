import 'package:delivery_food_app/components/foodCardInRestaurantPromote.dart';
import 'package:delivery_food_app/components/foodCardInRestaurantV2.dart';
import 'package:flutter/material.dart';

class PromoTab extends StatefulWidget {
  @override
  _PromoTabState createState() => _PromoTabState();
}

class _PromoTabState extends State<PromoTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Promo tab'),
    );
  }

  Widget _buildMealPromotion(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Meal Promotion',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              'View all',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Column(
          children: List.generate(2, (index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: FoodCardInRestaurantPromote(),
            );
          }),
        )
      ],
    );
  }

  Widget _buildNearBy(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Near by',
              style: Theme.of(context).textTheme.headline4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'View all',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Column(
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: FoodCardInRestaurantV2(),
            );
          }),
        )
      ],
    );
  }

  Widget _buildOtherMeal(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Other Meal',
              style: Theme.of(context).textTheme.headline4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'View all',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Column(
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: FoodCardInRestaurantV2(),
            );
          }),
        )
      ],
    );
  }
}
