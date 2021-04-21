import 'package:delivery_food_app/components/foodCardInRestaurantPromote.dart';
import 'package:delivery_food_app/components/foodCardInRestaurantV2.dart';
import 'package:flutter/material.dart';

class MealTab extends StatefulWidget {
  @override
  _MealTabState createState() => _MealTabState();
}

class _MealTabState extends State<MealTab>
    with AutomaticKeepAliveClientMixin<MealTab> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: _buildMealPromotion(context),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: _buildNearBy(context),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: _buildOtherMeal(context),
          ),
        ],
      ),
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
