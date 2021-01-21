
import 'package:delivery_food_app/commons/variables.dart';
import 'package:flutter/material.dart';

class FoodCardInOrder extends StatefulWidget {
  @override
  _FoodCardInOrderState createState() => _FoodCardInOrderState();
}

class _FoodCardInOrderState extends State<FoodCardInOrder> {

  double get smallDistance => 13;
  double get mediumDistance => 26;


  TextStyle get priceTextStyle => TextStyle(
    fontSize: 20,
    color: AppColor.orange,
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 112,
      color: AppColor.white,
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
        right: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/foods/food2.jpeg'),
                fit: BoxFit.fill,
              )
            ),
          ),
          SizedBox(width: smallDistance,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pizzon - Crib Ln',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.black,
                      ),
                    ),
                    Text(
                      '1 x Shrimp Pizza',
                      style: TextStyle(
                      fontSize: 15,
                      color: AppColor.neutral3,
                    ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 13,
                          color: AppColor.orange,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '14:50',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColor.orange,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                       Text(
                         '\$',
                         style: TextStyle(
                           fontSize: 16,
                           color: AppColor.orange,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                        SizedBox(width: 5,),
                        Text(
                          '16',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
