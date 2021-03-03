import 'package:delivery_food_app/UIData.dart';
import 'package:delivery_food_app/components/foodCardInRestaurantV2.dart';
import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';

class FoodCardInRestaurantPromote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FoodCardInRestaurantV2(),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: AppColor.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight:  Radius.circular(10),
              ),
            ),
            child: Text(
              '20%',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: AppColor.white, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
