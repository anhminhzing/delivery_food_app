import 'package:delivery_food_app/commons/variables.dart';
import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class FoodCardInOrder extends StatefulWidget {
  @override
  _FoodCardInOrderState createState() => _FoodCardInOrderState();
}

class _FoodCardInOrderState extends State<FoodCardInOrder> {
  double get smallDistance => 13;
  double get mediumDistance => 26;
  double get smallFontText => 14;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 112,
      decoration: BoxDecoration(
          color: AppColor.white,
          border: Border(
              bottom: BorderSide(
            color: AppColor.neutral4,
            width: 1.0,
          ))),
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 10,
        right: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/foods/food2.jpeg'),
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            width: smallDistance,
          ),
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
                      // 'Pizzon - Crib Ln',
                      'Pizzon - Crib Ln Pizzon',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColor.black,
                      ),
                    ),
                    Text(
                      '1 x Shrimp Pizza',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
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
                          size: smallFontText,
                          color: AppColor.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '14:50',
                          style: TextStyle(
                            fontSize: smallFontText,
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
                            fontSize: smallFontText,
                            color: AppColor.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '16',
                          style: TextStyle(
                            fontSize: smallFontText,
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
